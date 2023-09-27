import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

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
            color: Colors.red,
            child: RawApplePayButton(
              style: ApplePayButtonStyle.black,
              type: ApplePayButtonType.plain,
            ),
          ),
          const Text("last example"),
        ],
      )),
    );
    /*return Scaffold( 
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("apple pay button OK"),
          RawApplePayButton(
            style: ApplePayButtonStyle.black,
            type: ApplePayButtonType.plain,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const SizedBox(
                      height: 200,
                      child: Text("apple pay modal OK"),
                    );
                  });
            },
          ),
          const SizedBox(
            height: 50,
          ),
          const Text("apple pay button KO"),
          Semantics(
            label: "paiement card",
            excludeSemantics: false,
            explicitChildNodes: true,
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(100),
              child:  /* ElevatedButton(onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const SizedBox(
                          height: 200,
                          child: Text("apple pay modal OK"),
                        );
                      });
                }, child: Text("test"))  */
              
               RawApplePayButton(
                style: ApplePayButtonStyle.black,
                type: ApplePayButtonType.plain,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const SizedBox(
                          height: 200,
                          child: Text("apple pay modal OK"),
                        );
                      });
                },
              ),
            ),
          ),
        ],
      ),
    )); */
  }
}

class FirstWidgetOK extends StatefulWidget {
  const FirstWidgetOK({super.key});

  @override
  State<FirstWidgetOK> createState() => _FirstWidgetStateOK();
}

class _FirstWidgetStateOK extends State<FirstWidgetOK> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RawApplePayButton(
        style: ApplePayButtonStyle.black,
        type: ApplePayButtonType.plain,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 200,
                  child: Text("apple pay modal OK"),
                );
              });
        },
      ),
    );
  }
}

class KOWidget extends StatelessWidget {
  const KOWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Semantics(
        label: "paiement card",
        excludeSemantics: false,
        explicitChildNodes: true,
        child: Container(
          color: Colors.red,
          padding: const EdgeInsets.all(10),
          child: RawApplePayButton(
            style: ApplePayButtonStyle.black,
            type: ApplePayButtonType.plain,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const SizedBox(
                      height: 200,
                      child: Text("apple pay modal OK"),
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}

class OKWidget extends StatelessWidget {
  const OKWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RawApplePayButton(
      style: ApplePayButtonStyle.black,
      type: ApplePayButtonType.plain,
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 200,
                child: Text("apple pay modal OK"),
              );
            });
      },
    );
  }
}
