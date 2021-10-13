import 'package:uuid/uuid.dart';

bool toBool(String src) {
  return src.toLowerCase() == 'true';
}

String generateUUID() {
  return Uuid().v4();
}
