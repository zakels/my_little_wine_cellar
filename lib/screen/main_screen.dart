import 'package:flutter/material.dart';
import 'package:my_little_wine_cellar/component/add_wine_bottomsheet.dart';
import 'package:my_little_wine_cellar/screen/add_screen.dart';
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddScreen()),
          );
          // _ShowAddWineDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff971C23),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

void _ShowAddWineDialog(BuildContext context){
  showDialog(
      context: context,
      builder: (_) {
        var emailController = TextEditingController();
        var messageController = TextEditingController();
        return AlertDialog(
          title: Text('Contact Us'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                TextFormField(
                  controller: messageController,
                  decoration: InputDecoration(hintText: 'Message'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Send them to your email maybe?
                var email = emailController.text;
                var message = messageController.text;
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: const Color(0xff971C23),
                ),
              ),
            ),
          ],
        );
      }
  );
}