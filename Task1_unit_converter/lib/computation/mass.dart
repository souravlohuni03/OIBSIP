import 'package:flutter/material.dart';

class Mass extends StatefulWidget {
  const Mass({super.key});

  @override
  State<Mass> createState() => _MassState();
}

const conversions = {
  'kg': {
    "kg": 1,
    "g": 1000,
    "mg": 1000000,
    "ton": 0.001,
    "lbs": 2.2046226218,
    "oz": 35.27396195,
    'μg': 1000000000,
    'ct': 5000,
    'q': 0.01,
  },
  'g': {
    "kg": 0.001,
    "g": 1,
    "mg": 1000,
    "ton": 0.000001,
    "lbs": 0.0022046226,
    "oz": 0.0352739619,
    'μg': 1000000,
    'ct': 5,
    'q': 1e-5,
  },
  'mg': {
    "kg": 0.000001,
    "g": 0.001,
    "mg": 1,
    "ton": 1e-9,
    "lbs": 0.0000022046,
    "oz": 0.000035274,
    'μg': 1000,
    'ct': 0.005,
    'q': 1e-8,
  },
  'ton': {
    "kg": 1000,
    "g": 1000000,
    "mg": 1000000000,
    "ton": 1,
    "lbs": 2204.6226218,
    "oz": 35273.96195,
    'μg': 1000000000000,
    'ct': 5000000,
    'q': 10,
  },
  'lbs': {
    "kg": 0.45359237,
    "g": 453.59237,
    "mg": 453592.37,
    "ton": 0.0004535924,
    "lbs": 1,
    "oz": 16,
    'μg': 453592370,
    'ct': 2267.96185,
    'q': 0.0045359237,
  },
  'oz': {
    "kg": 0.0283495231,
    "g": 28.349523125,
    "mg": 28349.523125,
    "ton": 0.0000283495,
    "lbs": 0.0625,
    "oz": 1,
    'μg': 28349523.125,
    'ct': 141.74761563,
    'q': 0.00283495231,
  },
  'μg': {
    "kg": 1e-9,
    "g": 0.000001,
    "mg": 0.001,
    "ton": 1e-12,
    "lbs": 2.204622621E-9,
    "oz": 3.527396194E-8,
    'μg': 1,
    'ct': 0.000005,
    'q': 1e-11,
  },
  'ct': {
    "kg": 0.0002,
    "g": 0.2,
    "mg": 200,
    "ton": 2E-7,
    "lbs": 20.0004409245,
    "oz": 0.0070547924,
    'μg': 200000,
    'ct': 1,
    'q': 2e-6,
  },
  'q': {
    "kg": 100,
    "g": 100000,
    "mg": 100000000,
    "ton": 0.1,
    "lbs": 220.462262,
    "oz": 3.527396194E-8,
    'μg': 1e11,
    'ct': 500000,
    'q': 1,
  },
};

List<String> itemsList = ["kg", "g", "mg", "ton", "lbs", "oz", 'μg', 'ct', 'q'];
List<String> itemsList2 = [
  "kg",
  "g",
  "mg",
  "ton",
  "lbs",
  "oz",
  'μg',
  'ct',
  'q'
];
String? valuess;
String? valuess1;

class _MassState extends State<Mass> {
  final TextEditingController _textFieldController1 = TextEditingController();
  final TextEditingController _textFieldController2 = TextEditingController();
  @override
  void initState() {
    valuess = "kg";
    valuess1 = "g";
    super.initState();
  }

  @override
  void dispose() {
    _textFieldController1.dispose();
    _textFieldController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 280,
                    child: TextField(
                      controller: _textFieldController1,
                      keyboardType: TextInputType.number,
                      enabled: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        hintText: 'convert from ',
                      ),
                    ),
                  ),
                  DropdownButton(
                    underline: Container(
                      height: 2,
                      color: const Color.fromARGB(255, 56, 50, 125),
                    ),
                    dropdownColor: const Color.fromARGB(255, 178, 172, 247),
                    value: valuess,
                    items: itemsList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _textFieldController1.text = "";
                        _textFieldController2.text = "";
                        valuess = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 280,
                    child: TextField(
                      controller: _textFieldController2,
                      enabled: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        hintText: 'to',
                      ),
                    ),
                  ),
                  DropdownButton(
                    underline: Container(
                      height: 2,
                      color: const Color.fromARGB(255, 56, 50, 125),
                    ),
                    dropdownColor: const Color.fromARGB(255, 178, 172, 247),
                    value: valuess1,
                    items: itemsList2
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _textFieldController1.text = "";
                        _textFieldController2.text = "";
                        valuess1 = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(131, 66, 61, 119),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: List.generate(12, (index) {
                    if (index == 11) {
                      // Back button
                      return TextButton(
                          onPressed: () {
                            String currentValue = _textFieldController1.text;
                            if (currentValue.isNotEmpty) {
                              _textFieldController1.text = currentValue
                                  .substring(0, currentValue.length - 1);
                              int parsedValue =
                                  int.tryParse(_textFieldController1.text) ?? 0;
                              _textFieldController2.text = (parsedValue *
                                      conversions[valuess]![valuess1]!)
                                  .toString();
                            }
                          },
                          child: const Icon(
                            Icons.backspace,
                            color: Colors.black,
                          ));
                    } else if (index == 10) {
                      return TextButton(
                        onPressed: () {
                          String currentValue = _textFieldController1.text;
                          _textFieldController1.text =
                              (currentValue + (10 - index).toString());
                          double parsedValue =
                              double.tryParse(_textFieldController1.text) ?? 0;

                          _textFieldController2.text =
                              (parsedValue * conversions[valuess]![valuess1]!)
                                  .toString();
                        },
                        child: const Text(
                          "0",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      );
                      // Back button
                    } else if (index == 9) {
                      // Decimal point
                      return TextButton(
                        onPressed: () {
                          String currentValue = _textFieldController1.text;
                          _textFieldController1.text = ('$currentValue.');
                          double parsedValue =
                              double.tryParse(_textFieldController1.text) ?? 0;

                          _textFieldController2.text =
                              (parsedValue * conversions[valuess]![valuess1]!)
                                  .toString();
                        },
                        child: const Text(
                          ".",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      );
                    } else {
                      return TextButton(
                        onPressed: () {
                          String currentValue = _textFieldController1.text;
                          _textFieldController1.text =
                              (currentValue + (9 - index).toString());
                          double parsedValue =
                              double.tryParse(_textFieldController1.text) ?? 0;

                          _textFieldController2.text =
                              (parsedValue * conversions[valuess]![valuess1]!)
                                  .toString();
                        },
                        child: Text(
                          (9 - index).toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 24,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      );
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
