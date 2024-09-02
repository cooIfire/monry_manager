import 'package:flutter/material.dart';

class TestButton extends StatefulWidget {
  const TestButton({super.key});

  @override
  State<TestButton> createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  late int buttonIndex = 0;
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
      body: SafeArea(
          child: button(context)),
    );
  }

  Container button(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
              label: Text('Debit',
                  style: Theme.of(context).textTheme.labelMedium),
            ),
          ),
        ],
      ),
    );
  }
}
