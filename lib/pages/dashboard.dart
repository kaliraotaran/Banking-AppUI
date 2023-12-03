import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue.shade800,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage('assets/face.png'),
                        ),
                        Icon(
                          FontAwesomeIcons.magnifyingGlass,
                          size: 23,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        money(12442.34, '\$', ' USD - Dollar'),
                        money(34999.62, '€', 'EUR - Euro'),
                        money(11432.44, '₽', 'RUB - Ruble'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TransactionActionBtn('Add Money'),
                      TransactionActionBtn('Exchange'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flex(direction: Axis.vertical, children: [
            Container(
              height: 380,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  Text(
                    'Accounts',
                    textAlign: TextAlign.left,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.black),
                  )
                ],
              ),
            )
          ])
        ],
      ),
    );
  }

  Container TransactionActionBtn(String data) {
    return Container(
      width: 140,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.blue.shade500, borderRadius: BorderRadius.circular(13)),
      child: Center(
          child: Text(
        '$data',
        style: TextStyle(
          color: Colors.white,
        ),
      )),
    );
  }

  Padding money(double money, String curr, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
      child: Column(
        children: [
          Text(
            '$curr $money',
            style: const TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ' $name',
            style: TextStyle(fontSize: 15, color: Colors.blue.shade300),
          )
        ],
      ),
    );
  }
}
