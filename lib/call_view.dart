import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:near_care/widgets/custom_buttonn.dart';

class CallViewScreen extends StatefulWidget {
  const CallViewScreen({super.key});

  @override
  State<CallViewScreen> createState() => _CallViewScreenState();
}

class _CallViewScreenState extends State<CallViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 10.0, left: 10.0,top: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: .9 * MediaQuery.sizeOf(context).height,
                    child: Image.asset('images/agh.png', fit: BoxFit.cover),
                    decoration:  BoxDecoration(
                        color: Color(0xffe3f2fd).withOpacity(0.3),
                        ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 30,
                      child: Container(
                        height: 70,
                        width: .8 * MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: Color(0xffe3f2fd),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff252525),
                              child: Icon(Icons.phone,color: Colors.white),
                            ),
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xffefefef),
                               child: Icon(Icons.phone,color: Colors.black,),
                            ),
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xfffc044e),
                              child: Icon(Icons.phone,color: Colors.white),
                            ),
                             const CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff0d47a1),
                            child: Icon(Icons.phone,color: Colors.white),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .2,
                            ),
                          ],
                        ),
                      )),
                  //
                  Positioned(
                      left: 0,
                      top: 35,
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset('images/Capture.png'),
                          color: Colors.grey))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              CustomButton(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


