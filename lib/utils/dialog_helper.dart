import 'package:flutter/material.dart';

import '../configs/resources.dart';

class DialogHelper {
  static void showSnackbar(String message, BuildContext context) {
    SnackBar snackBar = SnackBar(
      backgroundColor: AppColors.secondaryColor,
      content: Text(
        message,
        style: AppTextStyles.regularRoboto16.copyWith(
          color: AppColors.white,
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> showLoading(BuildContext context, {String? message}) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                  strokeWidth: 8,
                ),
                Text(
                  message ?? 'loading...',
                  style: AppTextStyles.mediumRoboto14.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void hideLoading(BuildContext context) {
    return Navigator.of(context).pop();
  }
}
