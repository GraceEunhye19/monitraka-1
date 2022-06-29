import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class ProfileScreen extends StatefulWidget {
  static const id = '/ProfileScreen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Resources.pStrings.psHead,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                  ),
                  Text(Resources.pStrings.psSub,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Center(child: Image.asset(Resources.iStrings.moneyStairs,)),
                      // Center(
                      //   child: Row(
                      //     children: [
                      //       Center(child: Image.asset(Resources.iStrings.moneyStairs,
                      //         alignment: Alignment.center,)),
                      //     ],
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width:280,
                                // height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(4)
                                  ),

                                  border: Border.all(
                                      color: Resources.color.cGreen,
                                      width: 1
                                  ),
                                  color: Resources.color.cWhite,

                                  boxShadow: [
                                BoxShadow(
                                color: Resources.color.bBlack,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //


                                ],
                                ),
                                child:
                                // Image.asset(Resources.iStrings.profilePic,)
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text('Account Name',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('Tom Ogbu',
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                ),

                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Text('This is a profile page',
            style: TextStyle(
              color: Resources.color.cYellow
            ),
            ),
          ],
        ),
      ),



    );
  }
}

