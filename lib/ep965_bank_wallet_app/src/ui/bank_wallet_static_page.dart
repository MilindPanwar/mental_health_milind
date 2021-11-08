import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BankWalletStaticPage extends StatefulWidget {
  const BankWalletStaticPage({Key? key}) : super(key: key);

  @override
  _BankWalletStaticPageState createState() => _BankWalletStaticPageState();
}

class _BankWalletStaticPageState extends State<BankWalletStaticPage> {
  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: bottomNavIndex,
        children: [
          Container(
            child: Center(child: Text("page 1")),
          ),
          Container(
            child: Center(child: Text("page 2")),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text("Statistic"),
                ),
                Expanded(child: Placeholder()),
                Container(
                  height: 64,
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1.4,
                    ),
                    itemBuilder: (_, index) {
                      return Container(
                        color: Colors.blue,
                      );
                    },
                    itemCount: 10,
                  ),
                )),
              ],
            ),
          ),
          Container(
            child: Center(child: Text("page 4")),
          ),
          Container(
            child: Center(child: Text("page 5")),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 0;
                  });
                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 1;
                  });
                },
                icon: Icon(Icons.account_balance_wallet)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 2;
                  });
                },
                icon: Icon(Icons.pie_chart)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 3;
                  });
                },
                icon: Icon(Icons.description)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 4;
                  });
                },
                icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
