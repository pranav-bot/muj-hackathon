import 'package:flutter/material.dart';
import 'package:mujhackathon/views/homeview.dart';
import 'package:mujhackathon/views/loginview.dart';
import 'package:mujhackathon/views/mapview.dart';
import 'package:mujhackathon/views/registerview.dart';
import 'package:mujhackathon/views/storeview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'nav',
    routes: {
      'home': (context) => HomePageView(),
      'register': (context) => MyRegister(),
      'login': (context) => LoginView(),
      'map': (context) => MapView(),
      'store': (context) => StoreView(),
      'nav': (context) => NavView(),
    },
  ));
}

class NavView extends StatefulWidget {
  const NavView({super.key});

  @override
  State<NavView> createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  int currentIndex = 0;
  final screens = [HomePageView(), MapView(), StoreView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(
            () => currentIndex = index,
          ),
          type: BottomNavigationBarType.shifting,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue),
            const BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: 'Map',
                backgroundColor: Colors.green),
            const BottomNavigationBarItem(
                icon: Icon(Icons.medical_information),
                label: 'Store',
                backgroundColor: Colors.purple),
          ],
        ));
  }
}
