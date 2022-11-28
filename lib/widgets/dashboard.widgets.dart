import 'package:flutter/material.dart';

class DashboardWidgets extends StatelessWidget {
  const DashboardWidgets(
      {super.key, required this.s_type, required this.s_img});

  final s_type;
  final s_img;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      shadowColor: Colors.blueGrey,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              height: 109,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                s_img,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              s_type,
              style: const TextStyle(
                fontSize: 14,
                // fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 28, 75, 99),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
