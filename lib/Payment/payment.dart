import 'package:coba_1/succes_payment.dart';
import 'package:flutter/material.dart';

import '../Widget/app_bar_widget.dart';
import '../Widget/drawer_widget.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const AppBarWidget(),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 10,
                  bottom: 10,
                ),
                child: Text(
                  "Pembayaran",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // item
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Container(
                  width: 380,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SuccesPayment()));
                    },
                  child: 
                    Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/payment_cod.png",
                          height: 200,
                          width: 150,
                        )),),
                    SizedBox(
                      width: 190,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "Cash",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ]),
                ),
              ),
              // item
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Container(
                  width: 380,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SuccesPayment()));
                    },
                  child:
                    Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/payment_card.png",
                          height: 200,
                          width: 150,
                        )),),
                    SizedBox(
                      width: 190,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "Debit",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ]),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
        ),
      ]),
            drawer: const DrawerWidget(),
    );
  }
}
