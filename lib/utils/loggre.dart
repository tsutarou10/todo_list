import 'package:simple_logger/simple_logger.dart';

final logger = SimpleLogger()
  ..setLevel(
    Level.INFO,
    includeCallerInfo: true,
  )
  ..onLogged = (log, info) {
    if (info.level >= Level.SEVERE) {}
  };
