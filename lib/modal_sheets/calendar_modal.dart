import 'package:employee_list/configs/resources.dart';
import 'package:flutter/material.dart';

import '../widgets/calendar.dart';

dynamic calendarBottomSheet(BuildContext context, CalendarType calendarType,
    Function onSaveButtonTapped, DateTime? fromDay, DateTime? defaultDate) {
  showDialog(
    context: context,
    builder: ((context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          insetPadding: const EdgeInsets.all(16),
          contentPadding: const EdgeInsets.all(3),
          content: SizedBox(
            width: AppResources.width,
            child: Calendar(
              calendarType: calendarType,
              onSaveButtonTapped: onSaveButtonTapped,
              firstDay: fromDay,
              defaultDate: defaultDate,
            ),
          ),
        )),
  );
}
