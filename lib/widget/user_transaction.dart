import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/model/my_transaction.dart';
import 'package:flutter_complete_guide/widget/new_transaction.dart';
import 'package:flutter_complete_guide/widget/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTrasaction = [
    // Transaction(
    //     id: 't1', title: 'New shose', amount: 66.99, date: DateTime.now()),
    // Transaction(
    //     id: 't1', title: 'New computer', amount: 16.53, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
    setState(() {
      _userTrasaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTrasaction),
      ],
    );
  }
}
