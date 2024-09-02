import 'package:flutter/material.dart';
import 'package:money_manager/transactions.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child:
          Text("Money\nManager", style: Theme.of(context).textTheme.titleLarge),
    ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
                color: Color.fromARGB(255, 238, 173, 173), width: 3.0),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: const Color.fromARGB(255, 238, 173, 173),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: const Color.fromARGB(255, 54, 53, 53),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.align_vertical_bottom_outlined,
                  size: 40, color: Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              label: 'Cash',
              icon: ImageIcon(AssetImage('lib/assets/images/dollar.png'),
                  size: 40, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'Card',
              icon: ImageIcon(AssetImage('lib/assets/images/credit-card.png'),
                  size: 40, color: Colors.white),
            ),
          ],
        ),
      ),

      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 238, 173, 173),
          ),
          height: 60,
          width: 60,
          child: const Icon(Icons.add),
        ),
      ),
      //
      //
      ///
      ///
      ///
      ///
      ///
      ///
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 53, 53),
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
          child: ImageIcon(AssetImage('lib/assets/images/piggy-bank.png'),
              color: Colors.white),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Icon(Icons.menu, color: Colors.white, size: 40)),
        ],
      ),
      //
      //
      //
      //
      //
      //
      // ----------------------------------------------------------------
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Row(
              children: [
                Text('Today\'s Transaction',
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //
              border: const Border(
                top: BorderSide(color: Colors.white, width: 2),
                bottom: BorderSide(color: Colors.white, width: 2),
                left: BorderSide(color: Colors.white, width: 2),
                right: BorderSide(color: Colors.white, width: 2),
              ),
            ),
            height: MediaQuery.of(context).size.height / 2,
            child: listTransaction(),
          ),
        ],
      ),
    );
  }
}

class listTransaction extends StatefulWidget {
  const listTransaction({
    super.key,
  });

  @override
  State<listTransaction> createState() => _listTransactionState();
}

class _listTransactionState extends State<listTransaction> {
  @override
  Widget build(BuildContext context) {
    return transaction.isEmpty
        ? const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'No transcactions added',
            ),
          )
        : ListView.builder(
            itemCount: transaction.length,
            itemBuilder: (context, index) {
              final tran = transaction[index];
              final amt = (tran['amount'] as double).abs();
              final day = (tran['time'] as DateTime).day;
              final month = (tran['time'] as DateTime).month;
              final hour = (tran['time'] as DateTime).hour;
              final minute = (tran['time'] as DateTime).minute;
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.white,
                    ),
                    bottom: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                child: ListTile(
                  title: Text(tran['description'] as String,
                      style: Theme.of(context).textTheme.bodyMedium),
                  subtitle: Text(
                    tran['Method'] as String,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '$amt',
                        style: TextStyle(
                            color: tran['type'] as String == 'Debit'
                                ? Colors.red
                                : Colors.green,
                            fontSize: 22),
                      ),
                      Text(
                        ('$day/$month   $hour:$minute'),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  leading: (tran['Method'] as String) == 'Cash'
                      ? const ImageIcon(
                          AssetImage('lib/assets/images/dollar.png'),
                          color: Colors.white,
                        )
                      : const ImageIcon(
                          AssetImage('lib/assets/images/credit-card.png'),
                          color: Colors.white),
                ),
              );
            },
          );
  }
}
