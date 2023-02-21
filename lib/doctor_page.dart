import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class doctor_page extends StatelessWidget {
  final String pic;
  final String rate;
  final String name;

  doctor_page({required this.pic, required this.rate, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.fromARGB(255, 210, 198, 243)),
          child: Column(children: [
            SizedBox(
              height: 5,
            ),
            CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(120),
                  child: Image.asset(
                    "$pic",
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/star.svg",
                  height: 22,
                  fit: BoxFit.fitWidth,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "$rate",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Text(
                  "$name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
