import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late DateTime now;
  late DateTime threeMonthsAgo;
  late DateTime afterTwentyDays;
  late TimeOfDay currentTime;
  final String date = 'Tarih Seç';

  @override
  void initState() {
    super.initState();
    now = DateTime.now();
    threeMonthsAgo = DateTime(now.year, now.month - 3);
    afterTwentyDays = DateTime(now.year, now.month, now.day + 20);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(date),
      onPressed: () async {
        var selectedDate = await showDatePicker(
            context: context, initialDate: now, firstDate: threeMonthsAgo, lastDate: afterTwentyDays);

        // dont use BuildContext across asynchronous gaps
        // Asenkron işlemler yapılırken context'i kullanmadan önce işlemin tammalanacağından emin ol yoksa uygulama crash atabilir.
        //https://www.youtube.com/watch?v=bzWaMpD1LHY
        if (mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(backgroundColor: Theme.of(context).colorScheme.error, content: Text(selectedDate.toString())));
      },
    );
  }
}
