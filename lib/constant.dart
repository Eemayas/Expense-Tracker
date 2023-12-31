// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBackgroundColor = Color(0xff1E1E1E);
const Color kBackgroundColorAppBar = Color.fromARGB(255, 43, 41, 50);
const Color kBackgroundColorCard = Color.fromARGB(255, 43, 41, 50);

const Color kBoxShadowIncome = Color(0x7F008000);
const Color kBoxShadowExpenses = Color(0x7FFF0000);

const Color kColorExpenses = Colors.red;
const Color kColorIncome = Colors.green;

const Color kMainBoxBorderColor = Color.fromARGB(168, 105, 240, 175);
const Color kBoxShadowMainBoxBolor = Color.fromARGB(168, 105, 240, 175);

TextStyle kwhiteTextStyle = GoogleFonts.quicksand(
  textStyle: const TextStyle(letterSpacing: 1, fontSize: 15, color: Color(0xffF2F2F2)),
);
TextStyle kwhiteboldTextStyle = GoogleFonts.quicksand(
  textStyle: const TextStyle(letterSpacing: 1, fontSize: 15, color: Color(0xffF2F2F2), fontWeight: FontWeight.bold),
);

TextStyle ksubTextStyle = GoogleFonts.quicksand(
  textStyle: const TextStyle(letterSpacing: 1, color: Color(0xffBDBDBD)),
);

List TagList = [
  'Food',
  'Transportation',
  'Salary',
  'Grocery'
      'Housing',
  'Utilities',
  'Healthcare',
  'Education',
  'Entertainment',
  'Clothing',
  'Personal Care',
  'Gifts',
  'Savings',
  'Miscellaneous',
];
IconData getIconForElement(String element) {
  switch (element) {
    case 'Food':
      return Icons.fastfood;
    case 'Transportation':
      return Icons.directions_car;
    case 'Salary':
      return Icons.attach_money;
    case 'Grocery':
      return Icons.shopping_cart;
    case 'Housing':
      return Icons.home;
    case 'Utilities':
      return Icons.lightbulb_outline;
    case 'Healthcare':
      return Icons.local_hospital;
    case 'Education':
      return Icons.school;
    case 'Entertainment':
      return Icons.movie;
    case 'Clothing':
      return Icons.shopping_bag;
    case 'Personal Care':
      return Icons.spa;
    case 'Gifts':
      return Icons.card_giftcard;
    case 'Savings':
      return Icons.account_balance_wallet;
    case 'Miscellaneous':
      return Icons.build;
    default:
      return Icons.attach_money;
  }
}

List TransactionTypelist = [incomeT, expensesT, toReceiveT, toPayT];
List Accountlist = ["Cash", "Esewa", "Khalti"];

const String incomeT = "Income";
const String expensesT = "Expenses";
const String toReceiveT = "to Receive";
const String toPayT = "To Pay";

const String currentBalanceD = "currentBalance";
const String totalIncomeD = "totalIncome";
const String totalExpensesD = "totalExpenses";
const String toReceiveD = "toReceive";
const String toPayD = "toPay";

const String transationNameD = "transationNameD";
const String transactionTagD = "transactionTagD";
const String transactionDescriptionD = "transactionDescriptionD";
const String transactionAccountD = "transactionAccountD";
const String iconsNameD = "iconsNameD";
const String transactionTypeD = "transactionTypeD";
const String transactionPersonD = "transactionPersonD";
const String transactionAmountD = "transactionAmountD";
const String transactionDateD = "transactionDateD";
const String transactionCreatedDateD = "transactionCreatedDateD";
const String transactionIconD = "transactionIconD";

const String miscellaneousaccountNameD = "Miscellaneous Account";
const String accountNameD = "accountNameD";
const String accountCurrentBalanceD = "accountCurrentBalanceD";

const String userNameD = "userNameD";
const String userPhoneD = "userPhoneD";
const String userEmailD = "userEmailD";
const String userDOBD = "userDOBD";

const String transactionDatabase = "Transaction";
const String accountDatabase = "Account";
const String amountListDatabase = "AmountList";
const String userDataDatabase = "UserData";
