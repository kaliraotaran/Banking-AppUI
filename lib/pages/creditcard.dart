import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Creditcard extends StatelessWidget {
  const Creditcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text(
              '\$12442.34',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(20)),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      FontAwesomeIcons.creditCard,
                      size: 30,
                      color: Colors.white24,
                    ),
                  ),
                ),
                Text(
                  '5444   0032   ****   3431',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Column(
                        children: [
                          Text(
                            'VALID DATE',
                            style: TextStyle(
                              color: Colors.white24,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '09/15',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        FontAwesomeIcons.ccVisa,
                        color: Colors.white,
                        size: 32,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    actionContainer(FontAwesomeIcons.creditCard, 'Top up card'),
                    actionContainer(FontAwesomeIcons.wallet, 'Payments'),
                    actionContainer(FontAwesomeIcons.arrowRight, 'Card Output'),
                    actionContainer(
                        FontAwesomeIcons.creditCard, 'Withdraw all money'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container actionContainer(IconData icon, String action) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.blue.shade50, borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        const SizedBox(
          width: 20,
        ),
        Icon(
          icon,
          color: Colors.blue.shade600,
        ),
        const SizedBox(
          width: 30,
        ),
        Text(
          action,
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
