import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_complete_guide/models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(id: '1', title: 'Boba', amount: 7.25, date: DateTime.now()),
    Transaction(
        id: '2', title: 'Chichen Nuggets', amount: 6.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions
          .map((transaction) => Card(
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${transaction.amount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        // Can also just pass the format string into DateFormat like 'MMM dd, yyyy'
                        DateFormat().add_yMMMd().format(transaction.date),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              )))
          .toList(),
    );
  }
}
