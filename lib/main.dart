import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple Pay Issue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApplePayIssue(),
    );
  }
}

class ApplePayIssue extends StatefulWidget {
  const ApplePayIssue({super.key});

  @override
  State<ApplePayIssue> createState() => _ApplePayIssueState();
}

class _ApplePayIssueState extends State<ApplePayIssue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("first example"),
          const Text("second example"),
          const Text("third example"),
          Container(
            height: 50,
            width: 200,
            color: Colors.red,
            child: const CustomApplePayButton()
          ),
          const Text("last example"),
        ],
      )),
    );
  }
}

class CustomApplePayButton extends StatelessWidget {
  const CustomApplePayButton({super.key});

  @override
  Widget build(BuildContext context) {
    const String viewType = 'apple_pay_custom';
    final Map<String, dynamic> params = {};

    return UiKitView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: params,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
