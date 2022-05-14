import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'KeepCycle'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'ad',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //calculator page
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const CalculatorsPage();
            },
          ));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CalculatorsPage extends StatefulWidget {
  const CalculatorsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CalculatorsPage> createState() => _CalculatorsPageState();
}

class _CalculatorsPageState extends State<CalculatorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text('Calculators'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return CalorieCalculator();
                    },
                  ));
                },
                child: const Text('CalCalculator'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130.0, 90.0)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return PlateCalculator();
                    },
                  ));
                },
                child: const Text('PlateCalculator'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130.0, 90.0)),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return BMICalculator();
                    },
                  ));
                },
                child: const Text('BMICalculator'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130.0, 90.0)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return IWCalculator();
                    },
                  ));
                },
                child: const Text('IWCalculator'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130.0, 90.0)),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class CalorieCalculator extends StatefulWidget {
  const CalorieCalculator({Key? key}) : super(key: key);

  @override
  State<CalorieCalculator> createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: const Center(child: Text('You have pressed the button  times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int _bodyWeight = 0;
  int _height = 0;
  double _BMI = 0;
  int _calculated = 0;
  double calculateBMI(int weight, int height) {
    return weight / (height * height / 10000);
  }

  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Calculated BMI ' + _BMI.toStringAsFixed(1),
                      style: const TextStyle(fontSize: 22),
                    )),
              ),

             // needs a fix (does not update the screen)
             // calculated == 1 print canlculation results.
             // if (_calculated == 1) BmiInfo(bmi: _BMI, height: _height),

              TextField(
                controller: _heightController,
                decoration: InputDecoration(
                    hintText: 'Enter your height here (Ex:180)',
                    suffixIcon: IconButton(
                      onPressed: () {
                        _heightController.clear();
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    border: const OutlineInputBorder(),
                    fillColor: Colors.lightBlue.shade100,
                    filled: true),
                keyboardType: TextInputType.number,
                maxLength: 3,
              ),
              TextField(
                controller: _weightController,
                decoration: InputDecoration(
                    hintText: 'Enter your weight here (Ex:80)',
                    suffixIcon: IconButton(
                      onPressed: () {
                        _weightController.clear();
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Colors.lightBlue.shade100,
                    filled: true),
                keyboardType: TextInputType.number,
                maxLength: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                        label: const Text('Calculate'),
                        icon: const Icon(Icons.add, color: Colors.white),
                        onPressed: //(_weightController.text.isEmpty || _heightController.text.isEmpty)  ? null :
                            () {
                          setState(() {
                            _height = int.parse(_heightController.text);
                            _bodyWeight = int.parse(_weightController.text);
                            _BMI = calculateBMI(_bodyWeight, _height);
                            _calculated = 1;
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                        label: const Text('Reset'),
                        icon: const Icon(Icons.clear, color: Colors.red),
                        onPressed: //(_weightController.text.isEmpty || _heightController.text.isEmpty)  ? null :
                            () {
                          setState(() {
                            _height = 0;
                            _bodyWeight = 0;
                            _BMI = 0;
                            _calculated = 0;
                            _weightController.clear();
                            _heightController.clear();
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class BmiInfo extends StatefulWidget {
  final double bmi;
  final int height;
  const BmiInfo({
    Key? key,
    required this.bmi,
    required this.height,
  }) : super(key: key);

  @override
  State<BmiInfo> createState() => _BmiInfoState();
}

class _BmiInfoState extends State<BmiInfo> {
  late final String info;
  late final double idealWeightUpperLimit;
  late final double idealWeightDownLimit;
  String setInfo() {
    if (widget.bmi < 18.5) {
      return 'You are underweight';
    } else if (widget.bmi > 18.5 && widget.bmi < 24.9) {
      return 'Your weight is ideal';
    } else if (widget.bmi > 25 && widget.bmi < 29.9) {
      return 'You are underweight';
    } else if (widget.bmi > 30) {
      return 'You are obese';
    }
    return '';
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    info = setInfo();
    idealWeightDownLimit = (widget.height) * (widget.height) * (18.5 / 10000);
    idealWeightUpperLimit = (widget.height) * (widget.height) * (24.9 / 10000);
  }

  @override
  void didUpdateWidget(covariant BmiInfo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if((oldWidget.bmi != widget.bmi) || (oldWidget.height != widget.height)) {
      setState(() {
        info = setInfo();
        idealWeightDownLimit = (widget.height) * (widget.height) * (18.5 / 10000);
        idealWeightUpperLimit = (widget.height) * (widget.height) * (24.9 / 10000);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(info)
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text('Your ideal weight is between ' +
                  idealWeightDownLimit.toStringAsFixed(1) + ' and ' +
                  idealWeightUpperLimit.toStringAsFixed(1) +'.'
              )
          ),
        ],
      ),
    );
  }
}

class PlateCalculator extends StatefulWidget {
  const PlateCalculator({Key? key}) : super(key: key);

  @override
  State<PlateCalculator> createState() => _PlateCalculatorState();
}

class _PlateCalculatorState extends State<PlateCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: const Center(child: Text('You have pressed the button  times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class IWCalculator extends StatefulWidget {
  const IWCalculator({Key? key}) : super(key: key);

  @override
  State<IWCalculator> createState() => _IWCalculatorState();
}

class _IWCalculatorState extends State<IWCalculator> {
  bool _male = false;
  bool _female = false;
  int _height = 0;
  double _idealWeight = 0;

  //Ideal body weight is computed in
  // men as 50 + (0.91 × [height in centimeters − 152.4])
  // and in women as 45.5 + (0.91 × [height in centimeters − 152.4]).
  double calculateIW(int height, bool male, bool female) {
    if (male == true) {
      return (50 + (0.91) * (height - 152.4));
    } else if (female == true) {
      return (50 + (0.91) * (height - 152.4));
    }
    return 0;
  }

  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Sample Code'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                        "Calculated Ideal Weight: " +
                            _idealWeight.toStringAsFixed(1),
                        style: const TextStyle(fontSize: 22))),
              ),
              TextField(
                controller: _heightController,
                decoration: InputDecoration(
                    hintText: 'Enter your height here (Ex:180)',
                    suffixIcon: IconButton(
                      onPressed: () {
                        _heightController.clear();
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    border: const OutlineInputBorder(),
                    fillColor: Colors.lightBlue.shade100,
                    filled: true),
                keyboardType: TextInputType.number,
                maxLength: 3,
              ),
              CheckboxListTile(
                  title: const Text('male'),
                  secondary: const Icon(Icons.male),
                  controlAffinity: ListTileControlAffinity.leading,
                  tileColor: Colors.lightBlue.shade100,
                  value: _male,
                  onChanged: (value) {
                    setState(() {
                      _male = value!;
                      _female = false;
                    });
                  }),
              CheckboxListTile(
                  title: const Text('female'),
                  secondary: const Icon(Icons.female),
                  controlAffinity: ListTileControlAffinity.leading,
                  tileColor: Colors.lightBlue.shade100,
                  value: _female,
                  onChanged: (value) {
                    setState(() {
                      _female = value!;
                      _male = false;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                        label: const Text('Calculate'),
                        icon: const Icon(Icons.add, color: Colors.white),
                        onPressed: //(_weightController.text.isEmpty || _heightController.text.isEmpty)  ? null :
                            () {
                          setState(() {
                            _height = int.parse(_heightController.text);
                            // _bodyWeight = int.parse(_weightController.text);
                            _idealWeight = calculateIW(_height, _male, _female);
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                        label: const Text('Reset'),
                        icon: const Icon(Icons.clear, color: Colors.red),
                        onPressed: //(_weightController.text.isEmpty || _heightController.text.isEmpty)  ? null :
                            () {
                          setState(() {
                            _height = 0;
                            _heightController.clear();
                            _male = false;
                            _female = false;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
