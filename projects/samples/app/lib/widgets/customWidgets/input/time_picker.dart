import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  late TimeOfDay currentTime = TimeOfDay.now();
  final String time = 'Saat Seç';

  @override
  void initState() {
    super.initState();
    currentTime = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(time),
      onPressed: () async {
        var selectedTime = await showTimePicker(context: context, initialTime: currentTime);
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(selectedTime.toString())));
      },
    );
  }
}
