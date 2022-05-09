import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String text;
  final String date;
  const TaskCard({Key? key, required this.text, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.info,
              color: Colors.red,
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date,
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.delete_rounded,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
