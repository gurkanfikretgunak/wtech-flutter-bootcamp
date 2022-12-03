import 'package:intl/intl.dart';

import '../../model/event/event.dart';

class Helper {
  Helper._init();
  static final Helper _instance = Helper._init();
  static Helper get instance => _instance;
  String dateFormatter(Event event) {
    DateTime date = DateTime.parse(event.startTime ?? '');
    String formattedDate = DateFormat('E, MMM d HH:mm').format(date);
    return formattedDate;
  }
}
