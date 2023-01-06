import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '/constants.dart';

final logger = Logger(
  level: Constants.logLevel,
  printer: PrettyPrinter(
    methodCount: 2,
    errorMethodCount: 8,
    printTime: true,
  ),
);

final _providerLogger = Logger(
  level: Constants.logLevel,
  printer: PrettyPrinter(
    methodCount: 0,
    printTime: true,
  ),
);

class AppProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    _providerLogger.d(
      '''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''',
    );
  }

  @override
  void didDisposeProvider(
      ProviderBase provider,
      ProviderContainer containers,
      ) {
    _providerLogger.d(
      'disposedProvider: "${provider.name ?? provider.runtimeType}"',
    );
  }
}
