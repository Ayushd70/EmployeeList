import 'package:employee_list/configs/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/button_model.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.buttonProps});
  final ButtonDataModel buttonProps;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: buttonProps.size,
            backgroundColor: buttonProps.buttonColor,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        onPressed: () => {},
        child: buttonProps.buttonType == ButtonType.textButton
            ? Text(
                buttonProps.text!,
                style: AppTextStyles.mediumRoboto14
                    .copyWith(color: buttonProps.textColor),
              )
            : SvgPicture.asset(
                buttonProps.icon!,
                width: 18,
                height: 18,
              ));
  }
}
