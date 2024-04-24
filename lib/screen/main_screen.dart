import 'package:flutter/material.dart';
import 'package:my_little_wine_cellar/screen/home_screen.dart';
import 'package:my_little_wine_cellar/screen/list_screen.dart';
import 'package:my_little_wine_cellar/screen/profile_screen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // no app bar
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff971C23),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '와인 목록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이 페이지',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('pressed btn.');
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff971C23),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}