import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/screen/secondScreen.dart';

import '../constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var groupValue = 1;
  bool check = true;

  @override
  void dispose() {
    FocusNode().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          /// ColorScheme [Key : ColorScheme.secondary]
          Icon(Icons.wifi, color: Theme.of(context).colorScheme.secondary),
          Icon(Icons.language),
        ],
        title: Text('Theme'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '==== Default Text ====  \nThis article shows dynamically switching between themes in flutter during runtime using Provider as well as making the chosen theme permanent between app sessions using shared preferences.',
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              alignment: Alignment.center,

              /// ColorScheme [Key : ColorScheme.background]
              color: Theme.of(context).colorScheme.background,
              child: Text(
                '==== Container ==== \nThis article shows dynamically switching between themes in flutter during runtime using Provider as well as making the chosen theme permanent between app sessions using shared preferences.',

                /// ColorScheme [Key : ColorScheme.primary]
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'This article shows dynamically switching between themes in flutter during runtime using Provider as well as making the chosen theme permanent between app sessions using shared preferences.',

                /// Replace With TextStyle [Key: TextTheme.HeadLine1]
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (v) {
                      groupValue = v as int;
                    },
                  ),
                  Text('Radio'),
                  VerticalDivider(thickness: 3),
                  Checkbox(
                    value: check,
                    onChanged: (v) {
                      setState(() {
                        check = !check;
                      });
                    },
                  ),
                  Text('Check Box'),
                  VerticalDivider(thickness: 3),
                  TextButton(
                    onPressed: () {},
                    child: Text('TextButton'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: Text('Tap For Second Screen')),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.number,

                /// Add This Line For Next Action
                textInputAction: TextInputAction.next,
                cursorColor: Theme.of(context).colorScheme.onPrimary,
                decoration: const InputDecoration(
                  hintText: 'Number',
                  prefixIcon: Icon(Icons.email_outlined),
                  errorText: 'Text Form Field Error Style',
                ),

                /// for next step
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,

                /// Add This Line For Next Action
                textInputAction: TextInputAction.next,

                /// ColorScheme [Key : ColorScheme.onPrimary]
                cursorColor: Theme.of(context).colorScheme.onPrimary,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),

                /// for next step
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                /// Add This Line For Done Action
                textInputAction: TextInputAction.done,

                /// ColorScheme [Key : ColorScheme.onPrimary]
                cursorColor: Theme.of(context).colorScheme.onPrimary,
                decoration: const InputDecoration(
                  hintText: 'Done',
                  prefixIcon: Icon(Icons.email_outlined),
                ),

                /// done
                onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              ),
            ),
            const ListTile(
              title: Text('ListTile'),
              subtitle: Text('SubTitle'),
              leading: Icon(Icons.account_circle_outlined),
              trailing: Icon(Icons.call),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(

                  /// ColorScheme [Key : ColorScheme.background]
                  backgroundColor: Theme.of(context).colorScheme.background),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('AlertDialog Title'),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.done),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'OutlinedButton / AlertDialog',

                /// ColorScheme [Key : ColorScheme.headline2]
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Default OutlinedButton',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) =>
            FloatingActionButton(
          onPressed: () {
            setState(() {
              notifier.toggleTheme();
            });
          },
          child: Icon(
            notifier.darkTheme == true ? Icons.dark_mode : Icons.light_mode,
            size: 25,
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
