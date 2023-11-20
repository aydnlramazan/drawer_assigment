import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DrawerApp(),
    );
  }
}

class DrawerApp extends StatefulWidget {
  const DrawerApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer App"),
      ),
      body: const Center(
        child: Text(" "),
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Ramazan AYDINLI"),
            accountEmail: Text("dytramazanaydinli@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/ra.jpg"),
            ),
          ),
          ListTile(
            title: Text("Anasayfa"),
            leading: Icon(Icons.home),
            tileColor: Colors.white,
          ),
          ListTile(
            title: Text("Profil"),
            leading: Icon(Icons.person),
            tileColor: Colors.lightBlueAccent,
          ),
          ListTile(
            title: Text("iletişim"),
            leading: Icon(Icons.call),
          ),
          ListTile(
            title: Text("Çıkış Yap"),
            leading: Icon(Icons.exit_to_app),
            tileColor: Colors.lightBlueAccent,
          ),
        ],
      )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
