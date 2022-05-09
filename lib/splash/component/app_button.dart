import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade800),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Next",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 15,
            ),
            Icon(Icons.arrow_forward_ios_rounded,
                color: Colors.grey.shade400, size: 15),
            Icon(Icons.arrow_forward_ios_rounded,
                color: Colors.grey.shade600, size: 15),
          ],
        ),
      ),
    );
  }
}
