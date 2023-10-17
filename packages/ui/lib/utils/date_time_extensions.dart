import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String toPrettyDate() {
    final format = DateFormat('MMM dd, yyyy');

    return format.format(this);
  }
}
