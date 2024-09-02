import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  late int buttonIndex = 2;
  int buttonIndex1 = 3;
  final decor = BoxDecoration(
    color: Colors.blueGrey.shade400,
    border: const Border(
      top: BorderSide(width: 2),
      bottom: BorderSide(width: 2),
      left: BorderSide(width: 2),
      right: BorderSide(width: 2),
    ),
    borderRadius: BorderRadius.circular(10),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        backgroundColor: const Color.fromARGB(200, 255, 255, 255),
        title: const Text('Add a Transaction', style: TextStyle(fontSize: 35)),
        content: Wrap(children: [
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Amount \t:',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      width: MediaQuery.of(context).size.width / 4,
                      child: TextField(
                        style: Theme.of(context).textTheme.labelMedium, 
                        decoration: InputDecoration(
                            prefixIcon:
                                const Icon(Icons.monetization_on_outlined),
                            labelStyle:
                                Theme.of(context).textTheme.labelMedium),
                        keyboardType: const TextInputType.numberWithOptions(),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Description \t:',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        width: MediaQuery.of(context).size.width / 4,
                        child: const TextField()),
                  ],
                ),
                const SizedBox(height: 30),
                button(context),
                const SizedBox(height: 10),
                buttonCr(context),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.check, size: 40),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.cancel_presentation_sharp, size: 40),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Container button(BuildContext contextx) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: const Border(
          top: BorderSide(width: 2),
          bottom: BorderSide(width: 2),
          left: BorderSide(width: 2),
          right: BorderSide(width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: buttonIndex == 0 ? decor : null,
            child: TextButton.icon(
              onPressed: () {
                buttonIndex = 0;
                setState(() {});
              },
              label: Text('Credit',
                  style: Theme.of(context).textTheme.labelMedium),
            ),
          ),
          Container(
            decoration: buttonIndex == 1 ? decor : null,
            child: TextButton.icon(
              onPressed: () {
                buttonIndex = 1;
                setState(() {});
              },
              label:
                  Text('Debit', style: Theme.of(context).textTheme.labelMedium),
            ),
          ),
        ],
      ),
    );
  }

  Container buttonCr(BuildContext contextx) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: const Border(
          top: BorderSide(width: 2),
          bottom: BorderSide(width: 2),
          left: BorderSide(width: 2),
          right: BorderSide(width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: buttonIndex1 == 0 ? decor : null,
            child: TextButton.icon(
              onPressed: () {
                buttonIndex1 = 0;
                setState(() {});
              },
              label:
                  Text('Cash', style: Theme.of(context).textTheme.labelMedium),
            ),
          ),
          Container(
            decoration: buttonIndex1 == 1 ? decor : null,
            child: TextButton.icon(
              onPressed: () {
                buttonIndex1 = 1;
                setState(() {});
              },
              label:
                  Text('Card', style: Theme.of(context).textTheme.labelMedium),
            ),
          ),
          Container(
            decoration: buttonIndex1 == 2 ? decor : null,
            child: TextButton.icon(
              onPressed: () {
                buttonIndex1 = 2;
                setState(() {});
              },
              label: Text('Others',
                  style: Theme.of(context).textTheme.labelMedium),
            ),
          ),
        ],
      ),
    );
  }
}
