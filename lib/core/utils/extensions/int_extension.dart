import 'package:intl/intl.dart';

extension IntegerExtension on int {
  String decimalID() {
    return NumberFormat.decimalPattern('id').format(this);
  }

  int toDiscount(int discount) => (this - (this * discount / 100)).toInt();

  String get toRupiah {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    return currencyFormatter.format(this);
  }
}
