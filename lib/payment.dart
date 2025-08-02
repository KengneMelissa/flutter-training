import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const Column(
              children: [
                Text(
                  "Payment",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTba4Z7Vhrh-uYqYi1fuidO7YYBedhHAqQfVtw3hbsNwR8XdfdB6OTpTVwQjR0nmoNVqw&usqp=CAU",
                          width: 70,
                          height: 50,
                        ),
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://www.penguininc.com/wp-content/uploads/2025/06/paypal-logo.webp",
                          width: 70,
                          height: 50,
                        ),
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://www.coalitionforthehomeless.org/wp-content/uploads/2024/06/apple-pay.png",
                          width: 70,
                          height: 50,
                        ),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 8, 150, 51), // vert clair
                      Color.fromARGB(255, 188, 238, 52), // turquoise clair
                      Color.fromARGB(255, 43, 235, 241),
                    ]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12, top: 16, bottom: 16),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Business",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.toggle_off,
                            size: 40,
                          ),
                          disabledColor: Colors.deepOrangeAccent,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            "assets/images/code.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        const Text(
                          "World",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Text(
                          "54127512 3412 3456",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -1),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Card Holder",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "Koushik sarkar",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -1),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expires",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "07/29",
                              style: TextStyle(
                                  letterSpacing: -1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CVV",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "215",
                              style: TextStyle(
                                  letterSpacing: -1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Card Number",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "1234 5678 1234 5678",
                      contentPadding: const EdgeInsets.only(left: 25),
                      helperStyle: const TextStyle(
                          fontWeight: FontWeight.w500, letterSpacing: -1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Koushik Sarkar",
                            contentPadding: const EdgeInsets.only(left: 25),
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, letterSpacing: -1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Card ID",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Mastercard",
                            contentPadding: const EdgeInsets.only(left: 25),
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, letterSpacing: -1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Expiration Date",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "07/29",
                            contentPadding: const EdgeInsets.only(left: 25),
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, letterSpacing: -1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "CVV",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "215",
                            contentPadding: const EdgeInsets.only(left: 25),
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, letterSpacing: -1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    "Payment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 73, 69, 104)),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 228, 238, 138),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      foregroundColor: const Color.fromARGB(255, 7, 16, 24))),
            ),
          ],
        ),
      ),
    );
  }
}
