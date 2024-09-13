import 'package:flutter/material.dart';
import 'package:todo_app/ui/utils/app_colors.dart';
import 'package:todo_app/ui/utils/app_theme.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin:const EdgeInsets.symmetric(vertical: 22,horizontal: 30) ,
      padding: const EdgeInsets.symmetric(vertical: 18 ,horizontal: 18),
      child: Row(
        children: [
          Container(
            height: 62,
            width: 4,
            decoration:  BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 24,),
           const Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Play Basketball" , style: AppTheme.taskTitleTextStyle,
                    maxLines: 1,overflow: TextOverflow.ellipsis,),
                SizedBox(height: 8,),
                Text("Description" , style: AppTheme.taskDescriptionTextStyle,),
              ],
                       ),
           ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12)
            ),
            child: const Icon(Icons.check , color: Colors.white,size: 34,),
          )
        ],
      ),
    );
  }
}
