import 'package:logger/logger.dart';

enum ApiMode { rest, stub, mix }

class Constants {
  static const appBaseVersion = '0.0.1';

  // 開発用、ログアウト状態で自動的にリダイレクトする機能を止める
  // 条件によってはバグるのを確認
  static const disableRedirect = false;

  // ログ出力の調整
  static const logLevel = Level.verbose;

  // Dioのログ出力調整
  static const logApi = true;
  static const logRequestBody = true;
  static const logResponseBody = false;

  // 通信関連
  static const apiMode = ApiMode.mix;
  // static const connectTimeoutMsec = 5 * 1000;
  static const connectTimeoutMsec = 60 * 1000;
  static const initialConnectTimeoutMsec = 10 * 1000;
}
