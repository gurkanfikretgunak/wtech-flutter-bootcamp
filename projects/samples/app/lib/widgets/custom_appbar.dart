import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final double appBarHeight;
  const CustomAppBar({super.key, this.appBarHeight = kToolbarHeight});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String? _time;
  String? _date;
  Timer? _timer;
  bool isDark = false;
  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    _time = DateFormat.Hms().format(DateTime.now());
    _date = DateFormat.MMMMEEEEd('tr-TR').format(DateTime.now());
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _time = DateFormat.Hms().format(DateTime.now());
        _date = DateFormat.MMMMEEEEd('tr-TR').format(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Theme.of(context).brightness,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(33),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text('Günaydın, Melih!', style: Theme.of(context).textTheme.headline2),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(_time ?? '', style: Theme.of(context).textTheme.headline1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(_date ?? '', style: Theme.of(context).textTheme.headline2),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isDark = !isDark;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).iconTheme.color!.withOpacity(0.2), width: 3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).iconTheme.color,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
