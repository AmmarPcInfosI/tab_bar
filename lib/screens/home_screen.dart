import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              PopupMenuButton(
                itemBuilder: (context) {
                  return ["Setting", "Quit"].map((e) {
                        return PopupMenuItem(
                          child: Text(e),
                          onTap: () {
                            print(e);
                          },
                        );
                      }).toList();
                },
              )
            ],
            title: const Text('TAB BAR'),
            bottom: const TabBar(
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.white,
                labelColor: Colors.redAccent,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.contact_page),
                    text: 'Contacts',
                  ),
                  Tab(
                    icon: Icon(Icons.chat),
                    text: 'Chat',
                  )
                ]),
          ),
          body: const TabBarView(children: [
            Center(child: Text('Home')),
            Center(child: Text('Contact')),
            Center(child: Text('Chat')),
          ]),
        ));
  }
}
