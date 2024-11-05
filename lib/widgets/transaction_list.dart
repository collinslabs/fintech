import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
           children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today, Aug 20"),
                  Row(
                    children: [
                      Text("All Transactions"),
                    ],
                  )
                ],
              ),
            ),
             ListTile(
               leading: CircleAvatar(
                 backgroundColor: Color.fromARGB(255, 239, 243, 245),
                 child: Icon(
                   Icons.fitness_center,
                   color: Colors.purpleAccent,
                 ),
               ),
               title: Text("Gym"),
               subtitle: Text("Payment"),
               trailing: Text("-\35.99",style: TextStyle(color: Colors.red),),
             ),
             Divider(),
             ListTile(
               leading: CircleAvatar(
                 backgroundColor: Color.fromARGB(255, 239, 243, 245),
                 child: Icon(
                   Icons.send,
                   color: Colors.orange,
                 ),
               ),
               title: Text("To Bradd"),
               subtitle: Text("Sent"),
               trailing: Text("-\435.35",style: TextStyle(color: Colors.black),),
             ),
             Divider(),
             ListTile(
               leading: CircleAvatar(
                 backgroundColor: Color.fromARGB(255, 239, 243, 245),
                 child: Icon(
                   Icons.account_balance,
                   color: Colors.black,
                 ),
               ),
               title: Text("Bank of UK"),
               subtitle: Text("Deposit"),
               trailing: Text("+\1,135.60",style: TextStyle(color: Colors.green),),
             ),
          ],
    ));
  }
}
