import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class IViewModel<T> with ChangeNotifier, DiagnosticableTreeMixin {
  T of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<T>(
      context,
      listen: listen,
    );
  }
}
