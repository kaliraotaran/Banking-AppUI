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
                  const SizedBox(
                    height: 20,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Accounts',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      accountsContainer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Cards',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 24,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade200,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  FontAwesomeIcons.plus,
                                  size: 13,
                                  color: Colors.blue.shade700,
                                ),
                                Text(
                                  'ADD CARDS',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blue.shade700),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              FontAwesomeIcons.creditCard,
                              color: Colors.blue.shade300,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'EUR *2334',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            const Text(
                              '8199.33 EUR',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }

  Container accountsContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
          color: Colors.blue.shade50, borderRadius: BorderRadius.circular(30)),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        theRow(FontAwesomeIcons.wallet, '80993-241-3-5000-432453'),
        const SizedBox(
          height: 5,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        theRow(FontAwesomeIcons.euroSign, '34999.62'),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        theRow(FontAwesomeIcons.dollarSign, '12442.34')
      ]),
    );
  }

  Row theRow(IconData icon, String thestring) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.blue.shade300,
        ),
        const SizedBox(width: 16),
        Text(
          thestring,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container TransactionActionBtn(String data) {
    return Container(
      width: 140,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.blue.shade500, borderRadius: BorderRadius.circular(13)),
      child: Center(
          child: Text(
        ' $data',
        style: const TextStyle(
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
