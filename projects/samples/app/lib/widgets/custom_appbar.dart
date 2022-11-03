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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Theme.of(context).brightness,
    ));
    return Container(
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
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF002359).withOpacity(0.2), width: 3),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).iconTheme.color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.dark_mode_outlined, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
