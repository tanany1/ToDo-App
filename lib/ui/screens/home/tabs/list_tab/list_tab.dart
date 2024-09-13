import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/home/tabs/list_tab/todo_widget.dart';

class ListTab extends StatelessWidget {
  const ListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount:100,
            itemBuilder: (context , index){
              return TodoWidget();
          },
          ),
        )
      ],
    );
  }
}
