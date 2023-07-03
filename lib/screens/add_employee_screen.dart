import 'package:employee_list/configs/resources.dart';
import 'package:employee_list/local_db_models/employees_local_db_model.dart';
import 'package:employee_list/utils/app_helper.dart';
import 'package:employee_list/utils/dialog_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../blocs/employees_data_manipulation_bloc.dart';
import '../modal_sheets/calendar_modal.dart';
import '../modal_sheets/designation_modal.dart';
import '../models/button_model.dart';
import '../models/input_field_model.dart';
import '../widgets/button.dart';
import '../widgets/input_field.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({
    super.key,
    this.employeeData,
  });

  final Employee? employeeData;

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  late final TextEditingController employeeNameController;

  late final TextEditingController designationController;

  late final TextEditingController fromPeriodController;

  late final TextEditingController toPeriodController;

  late DateTime? fromDate;

  late DateTime? toDate;

  setFromSelectedValue(DateTime? selectedDate) {
    fromDate = selectedDate;
    if (toDate != null && selectedDate!.isAfter(toDate!)) {
      toPeriodController.text = "No Date";
      toDate = null;
    }
    if (selectedDate!.isSameDate(DateTime.now())) {
      fromPeriodController.text = "Today";
      return;
    }
    fromPeriodController.text =
        DateFormat.d().add_MMM().add_y().format(selectedDate).toString();
  }

  setToSelectedValue(DateTime? selectedDate) {
    toDate = selectedDate;
    if (selectedDate == null) {
      toPeriodController.text = "No date";
      return;
    }
    if (selectedDate.isSameDate(DateTime.now())) {
      toPeriodController.text = "Today";
      return;
    }
    toPeriodController.text =
        DateFormat.d().add_MMM().add_y().format(selectedDate).toString();
  }

  onDesignationSeleted(String selectedValue) {
    designationController.text = selectedValue;
  }

  @override
  void initState() {
    super.initState();

    employeeNameController = TextEditingController();
    designationController = TextEditingController();
    toPeriodController = TextEditingController(text: "Today");
    fromPeriodController = TextEditingController();

    fromDate = DateTime.now();
  }

  @override
  void dispose() {
    employeeNameController.dispose();
    designationController.dispose();
    toPeriodController.dispose();
    fromPeriodController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    openDesignationBottomSheet() {
      designationBottomSheet(
        context,
        onDesignationSeleted,
      );
    }

    onFromPeriodTapped() {
      calendarBottomSheet(
          context, CalendarType.from, setFromSelectedValue, null, fromDate);
    }

    onToPeriodTapped() {
      calendarBottomSheet(
          context, CalendarType.to, setToSelectedValue, fromDate, toDate);
    }

    onSaveTapped() {
      if (employeeNameController.text.isEmpty) {
        DialogHelper.showSnackbar("Please enter employee Name", context);
        return;
      }
      if (designationController.text.isEmpty) {
        DialogHelper.showSnackbar("Please select employee Role", context);
        return;
      }
      if (fromPeriodController.text.isEmpty) {
        DialogHelper.showSnackbar("Please choose employee joing date", context);
        return;
      }
      Employee employee = Employee(
          id: widget.employeeData != null ? widget.employeeData!.id : null,
          name: employeeNameController.text,
          designation: designationController.text,
          fromPeriod: fromDate,
          toPeriod: toDate);
      BlocProvider.of<EmployeeDataManipulationBloc>(context)
          .add(AddEmployee(employee));
      FocusManager.instance.primaryFocus?.unfocus();
      Navigator.pop(context);
    }

    onDeleteTapped() {
      DialogHelper.showDeleteDialog(context, () => Navigator.pop(context), () {
        BlocProvider.of<EmployeeDataManipulationBloc>(context)
            .add(DeleteEmployee(widget.employeeData!));
        FocusManager.instance.primaryFocus?.unfocus();

        Navigator.popUntil(context, (route) => route.isFirst);
      });
    }

    onCancelTapped() {
      FocusManager.instance.primaryFocus?.unfocus();
      Navigator.pop(context);
    }

    if (widget.employeeData != null) {
      employeeNameController.text = widget.employeeData!.name!;
      designationController.text = widget.employeeData!.designation!;
      setFromSelectedValue(widget.employeeData!.fromPeriod);
      setToSelectedValue(widget.employeeData!.toPeriod);
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          widget.employeeData == null
              ? "Add Employee Details"
              : "Edit Employee Details",
          style: AppTextStyles.mediumRoboto18,
        ),
        actions: widget.employeeData != null
            ? [
                IconButton(
                  onPressed: onDeleteTapped,
                  icon: SvgPicture.asset(
                    AppIcons.delete,
                    height: 24,
                    width: 24,
                  ),
                ),
              ]
            : [],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            child: Column(children: [
              InputFieldWidget(
                inputfieldProps: InputFieldDataModel(
                  prefixIcon: SvgPicture.asset(
                    AppIcons.person,
                    fit: BoxFit.scaleDown,
                    height: 24,
                    width: 24,
                  ),
                  hintText: "Employee Name",
                  errMessage: "Please enter the name",
                  textController: employeeNameController,
                  keyboardType: TextInputType.text,
                  type: InputType.text,
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              InputFieldWidget(
                inputfieldProps: InputFieldDataModel(
                  prefixIcon: SvgPicture.asset(
                    AppIcons.job,
                    fit: BoxFit.scaleDown,
                    height: 24,
                    width: 24,
                  ),
                  suffixIcon: SvgPicture.asset(
                    AppIcons.downArrow,
                    fit: BoxFit.scaleDown,
                    height: 18,
                    width: 18,
                  ),
                  hintText: "Select role",
                  errMessage: "Please select a role",
                  textController: widget.employeeData != null
                      ? designationController
                      : designationController,
                  keyboardType: TextInputType.text,
                  type: InputType.prompt,
                  onTap: openDesignationBottomSheet,
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Row(
                children: [
                  Expanded(
                    child: InputFieldWidget(
                      inputfieldProps: InputFieldDataModel(
                        prefixIcon: SvgPicture.asset(
                          AppIcons.calender,
                          fit: BoxFit.scaleDown,
                          height: 24,
                          width: 24,
                        ),
                        hintText: "",
                        errMessage: "",
                        textController: fromPeriodController,
                        keyboardType: TextInputType.text,
                        type: InputType.prompt,
                        onTap: onFromPeriodTapped,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: SvgPicture.asset(
                      AppIcons.rightArrow,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  Expanded(
                    child: InputFieldWidget(
                      inputfieldProps: InputFieldDataModel(
                        prefixIcon: SvgPicture.asset(
                          AppIcons.calender,
                          fit: BoxFit.scaleDown,
                          height: 24,
                          width: 24,
                        ),
                        hintText: "No date",
                        errMessage: "Please select a date",
                        textController: toPeriodController,
                        keyboardType: TextInputType.text,
                        type: InputType.prompt,
                        onTap: onToPeriodTapped,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.extraLightgray),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 75,
                  child: ButtonWidget(
                      buttonProps: ButtonDataModel(
                          buttonColor: AppColors.lightBlue,
                          buttonTappedFunction: onCancelTapped,
                          buttonType: ButtonType.textButton,
                          textColor: AppColors.primaryColor,
                          text: "Cancel",
                          icon: AppIcons.add)),
                ),
                const SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: 75,
                  child: ButtonWidget(
                    buttonProps: ButtonDataModel(
                      buttonColor: AppColors.primaryColor,
                      buttonTappedFunction: onSaveTapped,
                      buttonType: ButtonType.textButton,
                      textColor: null,
                      text: "Save",
                      icon: AppIcons.add,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
