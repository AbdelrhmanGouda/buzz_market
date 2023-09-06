import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget{
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            buildDivider(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width! * .024 ),
              child: Text(
                  "or",
                style: TextStyle(
                  fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            buildDivider()

          ],
        ),
      ],
    );
  }
  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height:5,
        thickness: 1,
      ),
    );
  }

}