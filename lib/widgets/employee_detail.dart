import 'package:employee_list/configs/resources.dart';
import 'package:flutter/material.dart';

import '../models/employee_details_model.dart';
import '../utils/app_helper.dart';

class EmployeeDataWidget extends StatelessWidget {
  const EmployeeDataWidget({super.key, required this.employeeDetails});
  final EmployeeDetailsDataModel employeeDetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppHelper.toCamelCase(employeeDetails.employeeName),
          style: AppTextStyles.mediumRoboto16
              .copyWith(color: AppColors.secondaryColor),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(AppHelper.toCamelCase(employeeDetails.designation),
            style: AppTextStyles.regularRoboto14
                .copyWith(color: AppColors.lightgray)),
        const SizedBox(
          height: 6,
        ),
        Text(AppHelper.toCamelCase(employeeDetails.employeementPeriod),
            style: AppTextStyles.regularRoboto14
                .copyWith(color: AppColors.lightgray)),
      ],
    );
  }
}
