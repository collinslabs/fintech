import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/action_button.dart';
import '../widgets/credit_card.dart';
import '../widgets/transaction_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 80, 98),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Text(
                          "Luke Kaoru",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: (){

                      },
                      icon: const Icon(
                        Icons.notification_add_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 167),
                      color: Colors.white,
                      child: const Column(
                        children: [
                          SizedBox(height: 110,),
                          //ActionButtons
                          ActionButtons(),
                          SizedBox(height: 30,),
                          //TransactionList
                          TransactionList()
                        ],
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      left: 25,
                      right: 25,
                      child: CreditCard(),
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}