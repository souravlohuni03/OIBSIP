import 'package:flutter/material.dart';
import 'package:unit_converter/computation/length.dart';
import 'package:unit_converter/computation/mass.dart';

class ConvertScreen extends StatelessWidget {
  const ConvertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 96, 72, 134),
          title: const Center(child: Text("Unit Converter")),
        ),
        body: Column(
          children: const [
            TabBar(
                indicatorColor:
                    Color.fromARGB(255, 83, 77, 76), // Change indicator color

                tabs: [
                  Tab(
                    child: Text(
                      "Length",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Mass",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                LengthConvert(),
                Mass(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
