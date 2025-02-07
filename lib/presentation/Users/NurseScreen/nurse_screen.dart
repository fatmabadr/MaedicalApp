import 'package:flutter/material.dart';

import '../../Widgets/build_card.dart';
import '../../Widgets/user_profile.dart';
import '../MangerScreen/manger_screen.dart';



class NurseScreen extends StatelessWidget {
  const NurseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Stack(children: [
            Column(
              children: [
                SizedBox(height: height * 0.07),
                const UserProfile(
                    name: 'Salma Ali',
                    role: 'Specialist, Nurse',
                    imagePath: 'assets/images/ssss.png'),
                SizedBox(height: height * 0.02),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.91,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19,bottom: 0.01),
                      child: BuildCard(
                        backGround: 'assets/images/abc.png',
                        title: 'Calls',
                        subtitle: '',
                        iconPath: 'assets/images/rr.png',
                        hight: 300,
                        width: 150,
                        onTap: () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Mangerscreen()),
  );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BuildCard(
                        backGround: 'assets/images/dfg.png',
                        title: 'Tasks',
                        subtitle: '',
                        iconPath: 'assets/images/dd.png',
                        hight: 185,
                        width: 100,
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: BuildCard(
                        backGround: 'assets/images/hh.png',
                        title: 'Reports',
                        subtitle: '',
                        iconPath: 'assets/images/aa.png',
                        hight: 140,
                        width: 90,
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,bottom: 23,right: 7,top: 0.01),
                      child: BuildCard(
                        backGround: 'assets/images/hjs.png',
                        title: 'Attendance - Leaving',
                        subtitle: '',
                        iconPath: 'assets/images/sas.png',
                        hight: 500,
                        width: 450,
                        onTap: () {
                          
                        },
                      ),
                    ),
                  ],
                ),
               // SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: GestureDetector(
                    onTap: () {},
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/cc.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cases',
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Image.asset(
                              'assets/images/kl.png',
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
