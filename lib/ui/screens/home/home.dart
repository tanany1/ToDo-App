import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/home/tabs/list_tab/list_tab.dart';
import 'package:todo_app/ui/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:todo_app/ui/utils/app_colors.dart';

class Home extends StatefulWidget {
  static const routeName= "home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTabIndex = 0 ;
  List<Widget> tabs =[
    const ListTab(),
    const SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      body: tabs[currentTabIndex],
      floatingActionButton: buildFab() ,
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildBottomNavigationBar() => BottomNavigationBar(
      currentIndex: currentTabIndex,
      onTap: (newTabIndex){
        currentTabIndex =newTabIndex;
            setState(() {});
      },
      items: const [
        BottomNavigationBarItem(icon:Icon(Icons.list) , label:"List" ),
        BottomNavigationBarItem(icon:Icon(Icons.settings) , label:"Settings"),
      ],
    );

  buildFab() => FloatingActionButton(
      elevation: 8,
      clipBehavior: Clip.hardEdge,
      onPressed: (){},
      shape: const StadiumBorder(side: BorderSide(color: AppColors.white, width: 4 )),
      child: const Icon(Icons.add ,color: Colors.white,));
}
