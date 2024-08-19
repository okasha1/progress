import 'package:flutter/material.dart';

class CongratsPage extends StatefulWidget {
  const CongratsPage({super.key});

  @override
  State<CongratsPage> createState() => _CongratsPageState();
}

class _CongratsPageState extends State<CongratsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Congrats, You\'ve Earned a Bronze.',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Image.network(
                  'https://i.pinimg.com/564x/9c/b4/ae/9cb4ae54b1c0334410a04fdc7f7ede02.jpg'),
              SizedBox(
                width: 160,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('/home');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.blue[300]!),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
