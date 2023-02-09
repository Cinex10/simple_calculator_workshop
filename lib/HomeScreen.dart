import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator',
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: const Text(
                '32 + 32',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: const Text(
                '= 64',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(
                        number: 'Clr',
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                      ),
                      CustomButton(
                        number: '7',
                      ),
                      CustomButton(
                        number: '4',
                      ),
                      CustomButton(
                        number: '1',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(
                        number: 'Del',
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                      ),
                      CustomButton(
                        number: '8',
                      ),
                      CustomButton(
                        number: '5',
                      ),
                      CustomButton(
                        number: '2',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(
                        number: '×',
                        backgroundColor: Color.fromARGB(255, 124, 176, 224),
                        textColor: Color.fromARGB(255, 7, 52, 88),
                      ),
                      CustomButton(
                        number: '9',
                      ),
                      CustomButton(
                        number: '6',
                      ),
                      CustomButton(
                        number: '3',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(
                        number: '÷',
                        backgroundColor: Color.fromARGB(255, 124, 176, 224),
                        textColor: Color.fromARGB(255, 7, 52, 88),
                      ),
                      CustomButton(
                        number: '-',
                        backgroundColor: Color.fromARGB(255, 124, 176, 224),
                        textColor: Color.fromARGB(255, 7, 52, 88),
                      ),
                      CustomButton(
                        number: '+',
                        backgroundColor: Color.fromARGB(255, 124, 176, 224),
                        textColor: Color.fromARGB(255, 7, 52, 88),
                      ),
                      CustomButton(
                        number: '=',
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        hasShadow: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.number,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.hasShadow = false,
    super.key,
  });

  final String number;
  final Color backgroundColor;
  final Color textColor;
  final bool hasShadow;

// "5+6" -> 11
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(number);
      },
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          boxShadow: [
            if (hasShadow)
              BoxShadow(
                color: Colors.blue.withOpacity(0.4),
                blurRadius: 10,
                spreadRadius: 1,
              )
          ],
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              color: textColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
