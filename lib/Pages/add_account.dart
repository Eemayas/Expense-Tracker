// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, avoid_print

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:expenses_tracker/API/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

import '../API/database.dart';
import '../Componet/date_Input_field.dart';
import '../Componet/dropdown_button.dart';
import '../Componet/input_filed.dart';
import '../constant.dart';

class AddAccount extends StatefulWidget {
  static String id = "Add Account";

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  final accountnameController = TextEditingController();
  final amtController = TextEditingController();

  _addAccount() {
    Database db = Database();
    print(
        "${accountnameController.text}  ${int.tryParse(amtController.text)}   ");
    db.addAccountDB(
        accountName: accountnameController.text,
        amount: int.tryParse(amtController.text));
    print("addedddddd");
    Navigator.pop(context, "added");
  }

  @override
  void initState() {
    super.initState();
    accountnameController.addListener(() => setState(() {}));
    amtController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        print("${accountnameController.text}  ${amtController.text}   "),
        FocusScope.of(context).requestFocus(FocusNode())
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kBackgroundColorAppBar,
          title: Text(
            "Add Account",
            style: kwhiteTextStyle,
          ),
          actions: [
            IconButton(icon: Icon(Icons.more_vert), onPressed: () => {}),
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InputField(
                      hintText: "Esewa/Khalti",
                      Controllerss: accountnameController,
                      keyboardType: TextInputType.text,
                      labelText: "Account Name",
                      prefixIcon: Icons.account_balance_outlined),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                    Controllerss: amtController,
                    keyboardType: TextInputType.number,
                    labelText: "Amount",
                    prefixIcon: Icons.money,
                    hintText: "00000",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ProgressButton.icon(
                      textStyle: kwhiteTextStyle,
                      height: 40.00,
                      maxWidth: 200.00,
                      iconedButtons: {
                        ButtonState.idle: IconedButton(
                          text: "Add Account",
                          icon: Icon(Icons.add, color: Colors.white),
                          color: Colors.deepPurple.shade500,
                        ),
                        ButtonState.loading: IconedButton(
                            text: "Loading", color: Colors.deepPurple.shade700),
                        ButtonState.fail: IconedButton(
                            text: "Failed",
                            icon: Icon(Icons.cancel, color: Colors.white),
                            color: Colors.red.shade300),
                        ButtonState.success: IconedButton(
                            text: "Success",
                            icon: Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                            color: Colors.green.shade400)
                      },
                      onPressed: () => {
                            if (accountnameController.text.isEmpty)
                              {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: kBackgroundColorCard,
                                      content: Row(
                                        children: [
                                          Icon(Icons.error, color: Colors.red),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Plese Fill the title',
                                            style: kwhiteTextStyle.copyWith(
                                                color: Colors.red),
                                          ),
                                        ],
                                      )),
                                )
                              }
                            else
                              {_addAccount()},
                            FocusScope.of(context).requestFocus(FocusNode())
                          },
                      state: ButtonState.idle),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}