import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_complete_guide/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // A list view is a built in column + singleChildScrollView widget
      // List view must have a height provided, unlike Column it isnt just max screen height it can get
      // List view can just be used with children and you widgets but in the case of a long or unknown list width it can be non-performant
      // Listview.builder will lazy load lists and should be used instead if we have long lists!
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
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
                  '\$${transactions[index].amount}',
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
                    transactions[index].title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    // Can also just pass the format string into DateFormat like 'MMM dd, yyyy'
                    DateFormat().add_yMMMd().format(transactions[index].date),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}
