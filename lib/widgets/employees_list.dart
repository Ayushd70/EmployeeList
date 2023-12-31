import 'package:employee_list/configs/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grouped_list/grouped_list.dart';

import '../local_db_models/employees_local_db_model.dart';

import 'employee_item.dart';

class EmployeesListWidgets extends StatelessWidget {
  const EmployeesListWidgets({
    super.key,
    required this.employees,
    required this.onItemDelete,
  });

  final List<Employee> employees;
  final Function onItemDelete;

  @override
  Widget build(BuildContext context) {
    onEmployeeItemTapped(Employee employee) {
      Navigator.pushNamed(context, '/EmployeeFormScreen', arguments: employee);
    }

    return GroupedListView(
      elements: employees,
      groupBy: (element) => (element.toPeriod?.millisecondsSinceEpoch ??
                  DateTime.now().millisecondsSinceEpoch) <
              DateTime.now().millisecondsSinceEpoch
          ? "Previous employees"
          : "Current employees",
      useStickyGroupSeparators: true,
      stickyHeaderBackgroundColor: AppColors.extraLightgray,
      groupHeaderBuilder: (Employee value) => Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.extraLightgray,
        child: Text(
          (value.toPeriod?.millisecondsSinceEpoch ?? DateTime.now().millisecondsSinceEpoch ) < DateTime.now().millisecondsSinceEpoch ? "Previous employees" : "Current employees",
          style: AppTextStyles.mediumRoboto16.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
      itemBuilder: (context, element) {
        return InkWell(
          onTap: () => {
            onEmployeeItemTapped(element),
          },
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: AppColors.extraLightgray,
                ),
              ),
            ),
            child: Dismissible(
              key: UniqueKey(),
              background: ColoredBox(
                color: AppColors.red,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(AppIcons.delete),
                  ),
                ),
              ),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                onItemDelete(element);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: EmployeeItemWidget(
                  employee: element,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
