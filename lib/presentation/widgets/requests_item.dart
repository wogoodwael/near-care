import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:near_care/core/utils/constant.dart';
import 'package:near_care/presentation/screens/Video_Streem.dart';

class RequestsItem extends StatefulWidget {
  const RequestsItem({super.key, required this.color});
  final Color color;
  @override
  State<RequestsItem> createState() => _RequestsItemState();
}

class _RequestsItemState extends State<RequestsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0), color: widget.color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Request Time',
                style: TextStyle(
                    fontSize: 12,
                    color: kPraimary,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                '55 sec ago',
                style: TextStyle(
                    fontSize: 10, color: kBlack, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Pharmacy Name',
                style: TextStyle(
                    fontSize: 12,
                    color: kPraimary,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'El-Nahdi',
                style: TextStyle(
                    fontSize: 10, color: kBlack, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Pharmacy Sub Dep',
                style: TextStyle(
                    fontSize: 12,
                    color: kPraimary,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Riyadh Branch',
                style: TextStyle(
                    fontSize: 10, color: kBlack, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Request ID',
                style: TextStyle(
                    fontSize: 12,
                    color: kPraimary,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                '#1245',
                style: TextStyle(
                    fontSize: 10, color: kBlack, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => VideoStreemScreen()));
              },
              child: Container(
                height: 75,
                width: 65,
                child: Center(
                    child: Text(
                  'Join\nNow',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kPraimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
