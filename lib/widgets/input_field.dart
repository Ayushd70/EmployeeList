import 'package:employee_list/configs/resources.dart';
import 'package:flutter/material.dart';
import 'package:employee_list/models/input_field_model.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({super.key, required this.inputfieldProps});
  final InputFieldDataModel inputfieldProps;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputfieldProps.keyboardType,
      controller: inputfieldProps.myController,
      style: AppTextStyles.regularRoboto16
          .copyWith(color: AppColors.secondaryColor),
      decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () => {},
            child: inputfieldProps.suffixIcon,
          ),
          prefixIcon: inputfieldProps.prefixIcon,
          hintText: inputfieldProps.hintText,
          hintStyle: AppTextStyles.regularRoboto16
              .copyWith(color: AppColors.lightgray)),
    );
  }
}