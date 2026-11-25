import 'package:flutter/material.dart';
import 'package:spp_ricemill/widgets/customContainer.dart';
import 'package:spp_ricemill/noOfLoad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Ithu than mukkiyam ma - thani page aakitom ma
    );
  }
}

// PUDHU CLASS MA - ITHU THAN HOME PAGE
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Total Summary',
          style: TextStyle(
            fontFamily: 'SFProText',
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Color.fromRGBO(243, 20, 20, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container1(
              text1: "Total Incoming",
              text2: "₹ 5000",
              colors: Colors.green.shade100,
              onPressed: () {
                print("Clicked!");
                Navigator.push(
                  context, // Ippo intha context ku keezha Navigator irukku ma!
                  MaterialPageRoute(builder: (context) => const NoOfLoad()),
                );
              },
            ),
            Container1(
              text1: "Total Outgoing",
              text2: "₹ 3000",
              colors: Colors.red.shade100,
              onPressed: () {
                print("Outgoing Clicked!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
