import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAddRX extends StatelessWidget {
  const CustomAddRX({
    super.key,
    required this.dmaxLines,
    required this.sizeOfNames,
    required this.valuSize, required this.widthBetween,
  });

  final int dmaxLines;
  final double sizeOfNames;
  final double valuSize;
  final double widthBetween;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Name*',
              style: TextStyle(
                  fontSize: sizeOfNames,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0d47a1))),
          SizedBox(
            width: 10,
          ),
          Text('Unit *',
              style: TextStyle(
                  fontSize: sizeOfNames,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0d47a1))),
          Text('Dose *',
              style: TextStyle(
                  fontSize: sizeOfNames,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0d47a1))),
          Text('Repeat *',
              style: TextStyle(
                  fontSize: sizeOfNames,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0d47a1))),
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height * .01),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Alcalnima',
            style: TextStyle(fontSize: valuSize),
          ),
          SizedBox(
            width: widthBetween,
          ),
          Text(
            '1',
            style: TextStyle(fontSize: valuSize),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            '50g',
            style: TextStyle(fontSize: valuSize),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '5/day',
            style: TextStyle(fontSize: valuSize),
          ),
          SizedBox(
            width: 1,
          )
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height * .03),
      Container(
        margin: EdgeInsets.only(left: 5),
        width: .88 * MediaQuery.sizeOf(context).width,
        height: .2 * MediaQuery.sizeOf(context).height,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Add RX',
            hintStyle: TextStyle(),
            border: OutlineInputBorder(),
          ),
          maxLines: dmaxLines,
        ),
      ),
    ]);
  }
}
