import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger_sample/logger.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    runApp(
      ProviderScope(
        observers: [AppProviderObserver()],
        child: const SizedBox.shrink(),
      ),
    );
  }, (Object error, StackTrace stack) {});
}
