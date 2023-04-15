import 'package:flutter/material.dart';

class LengthConvert extends StatefulWidget {
  const LengthConvert({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LengthConvertState createState() => _LengthConvertState();
}

const conversions = {
  'km': {
    'km': 1,
    'm': 1000,
    'dm': 10000,
    'cm': 100000,
    'mm': 1000000,
    'μm': 1000000000,
    'yd': 1093.6132983,
    'ft': 3280.839895,
    'in': 39370.07874
  },
  'm': {
    'km': 0.001,
    'm': 1,
    'dm': 10,
    'cm': 100,
    'mm': 1000,
    'μm': 1000000,
    'yd': 1.0936132983,
    'ft': 3.280839895,
    'in': 39.37007874
  },
  'dm': {
    'km': 0.0001,
    'm': 0.1,
    'dm': 1,
    'cm': 10,
    'mm': 100,
    'μm': 100000,
    'yd': 0.1093613298,
    'ft': 0.3280839895,
    'in': 3.937007874
  },
  'cm': {
    'km': 0.00001,
    'm': 0.01,
    'dm': 0.1,
    'cm': 1,
    'mm': 10,
    'μm': 10000,
    'yd': 0.010936133,
    'ft': 0.032808399,
    'in': 0.3937007874
  },
  'mm': {
    'km': 0.000001,
    'm': 0.001,
    'dm': 0.01,
    'cm': 0.1,
    'mm': 1,
    'μm': 1000,
    'yd': 0.0010936133,
    'ft': 0.0032808399,
    'in': 0.03937007874
  },
  'μm': {
    'km': 1.0e-9,
    'm': 0.000001,
    'dm': 0.00001,
    'cm': 0.0001,
    'mm': 0.001,
    'μm': 1,
    'yd': 0.0000010936,
    'ft': 0.0000010936,
    'in': 0.0000393701
  },
  'yd': {
    'km': 0.0009144,
    'm': 0.9144,
    'dm': 9.144,
    'cm': 91.44,
    'mm': 914.4,
    'μm': 914400,
    'yd': 1,
    'ft': 3,
    'in': 36
  },
  'ft': {
    'km': 0.0003048,
    'm': 0.3048,
    'dm': 3.048,
    'cm': 30.48,
    'mm': 304.8,
    'μm': 304800,
    'yd': 0.3333333333,
    'ft': 1,
    'in': 12
  },
  'in': {
    'km': 0.0000254,
    'm': 0.0254,
    'dm': 0.254,
    'cm': 2.54,
    'mm': 25.4,
    'μm': 25400,
    'yd': 0.0277777778,
    'ft': 0.0833333333,
    'in': 1
  },
};
List<String> itemsList = ["km", "m", "dm", "cm", "mm", "μm", 'yd', 'in', 'ft'];
List<String> itemsList2 = ["km", "m", "dm", "cm", "mm", "μm", 'yd', 'in', 'ft'];

String valuess = "km";
String valuess1 = "m";

class _LengthConvertState extends State<LengthConvert> {
  final _textFieldController1 = TextEditingController();
  final _textFieldController2 = TextEditingController();

  @override
  void initState() {
    valuess = "km";
    valuess1 = "m";
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
                        hintText: 'convert from',
                      ),
                    ),
                  ),
                  DropdownButton(
                    underline: Container(
                      height: 2,
                      color: const Color.fromARGB(255, 14, 14, 149),
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
                  color: const Color.fromARGB(40, 117, 113, 230),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: GridView.count(
                  crossAxisSpacing: 2,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: List.generate(12, (index) {
                    if (index == 11) {
                      // Back button
                      return TextButton(
                        onPressed: () {
                          String currentValue = _textFieldController1.text;
                          if (currentValue.isNotEmpty) {
                            _textFieldController1.text = currentValue.substring(
                                0, currentValue.length - 1);
                            int parsedValue =
                                int.tryParse(_textFieldController1.text) ?? 0;
                            _textFieldController2.text =
                                (parsedValue * conversions[valuess]![valuess1]!)
                                    .toString();
                          }
                        },
                        child: const Icon(
                          Icons.backspace,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      );
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
                              color: Color.fromARGB(255, 0, 0, 0)),
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
                              fontSize: 28,
                              color: Color.fromARGB(255, 0, 0, 0)),
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
                            fontSize: 25,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
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
