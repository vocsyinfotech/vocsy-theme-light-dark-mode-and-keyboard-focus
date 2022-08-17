import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Second Screen'),
          bottom: TabBar(
            /// ColorScheme [Key : ColorScheme.secondary]
            indicatorColor: Theme.of(context).colorScheme.secondary,
            controller: tabController,
            tabs: [
              Tab(text: 'Chat'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TabBarView(controller: tabController, children: [
                  Center(child: Text('Chat Tab')),
                  Center(child: Text('Status Tab')),
                  Center(child: Text('Calls Tab')),
                ]),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '''Nowadays, switching themes is one of the trending feature in every mobile application. By switching the themes, users can reduce their eye strain and increases mobile battery life. 

In this article, we are going to learn about how to switch themes dynamically using a Provider for state management and SharedPreferences to save the user decision.

We may achieve this in two ways: one, by adding a custom option, and the other, by automatically switching the theme based on system settings.

In Flutter, we can give the Theme across the app by providing the ThemeData to the MaterialApp constructor. The default theme will be shared across the app when no theme is provided. ''',

                  /// Replace With TextStyle [Key: TextTheme.bodyText1]
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Text(
                'Text With TextTheme Headline',

                /// Replace With TextStyle [Key: TextTheme.HeadLine2]
                style: Theme.of(context).textTheme.headline2,
              ),
              GridView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 100,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,

                      /// ColorScheme [Key : ColorScheme.secondary]
                      color: Theme.of(context).colorScheme.secondary,
                    );
                  }),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: 'Shopping'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
