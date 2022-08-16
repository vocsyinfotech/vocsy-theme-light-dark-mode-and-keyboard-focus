import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    /// Add This Code When No AppBar in Scaffold
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        invertStatusIcons: true,
        noAppBar: true,
      ),
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          height: 275,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red.shade900, Colors.red],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          padding: EdgeInsets.only(top: 35, left: 21),
          child: Row(
            children: [
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Text('Without App Bar'),
            ],
          ),
        ),
      ),
    );
  }
}
