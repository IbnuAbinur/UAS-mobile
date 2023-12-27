// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  "Total:",
                  style:  TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Rp.100.000",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.pushNamed(context, "OrderPage");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              child: const Text(
                "Pesan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}