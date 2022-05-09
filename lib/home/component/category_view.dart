import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.adb_rounded,
            color: Colors.red,
          ),
          SizedBox(height: 17),
          Text(
            "Design",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            "+6 Task",
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}
