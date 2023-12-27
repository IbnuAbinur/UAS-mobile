import 'package:flutter/material.dart';
import 'package:usmobileibnu/page/listmusic.dart';
import 'package:usmobileibnu/page/toplist.dart';

class Home  extends StatelessWidget {
  const Home ({super.key});

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            SizedBox(width: 8),
            Text('PLAYLIST MUSIC'),
          ],
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            const Icon(
              Icons.notifications,
              size: 35,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ItemPage()),
                );
              },
              icon: const Icon(
                Icons.shopping_basket_rounded,
                size: 35,
              ),
            ),
          ],
      ),
    body: const ListMusic(),
    );
  }
}