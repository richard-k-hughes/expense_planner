import 'package:flutter/foundation.dart';

class Transaction {
  @required
  final String id;
  @required
  final String title;
  @required
  final double amount;
  @required
  final DateTime date;

  // constructor with named arguments
  Transaction({this.id, this.title, this.amount, this.date});
}
