import 'package:intl/intl.dart';

class HumanFormats {
  static formatNumber(int value) {
    final formatter =
        NumberFormat.compact(locale: "en_US", explicitSign: false);
    return formatter.format(value);
  }
}
