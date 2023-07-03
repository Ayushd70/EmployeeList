import 'package:employee_list/configs/resources.dart';
import 'package:flutter/material.dart';

dynamic designationBottomSheet(
    BuildContext context, Function onDesignationSelected) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: ((context) => Container(
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: AppResources.designations.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    onDesignationSelected(AppResources.designations[index]);
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: AppResources.designations.length - 1 != index
                        ? const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: AppColors.extraLightgray),
                            ),
                          )
                        : null,
                    child: Center(
                      child: Text(
                        AppResources.designations[index],
                        style: AppTextStyles.regularRoboto16
                            .copyWith(color: AppColors.secondaryColor),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )));
}
