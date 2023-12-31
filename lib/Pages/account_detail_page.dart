// ignore_for_file: prefer_const_constructors, avoid_print, unused_local_variable

import 'package:expenses_tracker/Pages/edit_account.dart';
import 'package:expenses_tracker/Pages/transaction_detail_page.dart';
import 'package:flutter/material.dart';

import '../API/database.dart';
import '../constant.dart';

class ShowAccountDetailPage extends StatefulWidget {
  final int index;

  static String id = "accoun detail page";
  const ShowAccountDetailPage({
    super.key,
    required this.index,
  });

  @override
  State<ShowAccountDetailPage> createState() => _AccountDetailPageState();
}

class _AccountDetailPageState extends State<ShowAccountDetailPage> {
  @override
  Widget build(BuildContext context) {
    Database db = Database();
    db.getAccountDB();
    int index = widget.index;
    // final index = db.AccountsList.indexWhere(
    //     (element) => element[accountNameD] == widget.accountName && element[accountCurrentBalanceD].toString() == widget.amount);
    print(widget.index);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final result = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EditAccount(
                      accountName: Database.AccountsList[index][accountNameD],
                      amount: Database.AccountsList[index][accountCurrentBalanceD].toString())));
          db.getAccountDB();
          db.getAmountDB();
          db.getTransactionDB();
          setState(() {
            print("reset");
          });
          // }
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.edit),
        label: const Text('Edit'),
      ),
      appBar: AppBar(
        backgroundColor: kBackgroundColorAppBar,
        title: Text(
          "Account Detail",
          style: kwhiteboldTextStyle,
        ),
        actions: [
          IconButton(icon: Icon(Icons.account_balance_outlined), onPressed: () => {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              DetailField(
                iconsData: Icons.account_balance_outlined,
                title: 'Title',
                isNote: true,
                data: Database.AccountsList[index][accountNameD],
                // data: widget.transactionTitle,
              ),
              DetailField(
                iconsData: Icons.money,
                title: 'Amount',
                data: "RS ${Database.AccountsList[index][accountCurrentBalanceD]}",
                // data: "RS ${widget.amount}",
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
