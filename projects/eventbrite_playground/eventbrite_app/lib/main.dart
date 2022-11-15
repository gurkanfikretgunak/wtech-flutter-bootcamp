import 'package:eventbrite_app/core/app.dart';
import 'package:eventbrite_app/core/init/provider/provider_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    MultiProvider(
      providers: [...AppProvider.instance.providers],
      child: const EventbriteApp(),
    ),
  );
}
