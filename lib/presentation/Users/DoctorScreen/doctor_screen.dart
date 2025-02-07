import 'package:flutter/material.dart';

import '../../Widgets/build_card.dart';
import '../../Widgets/user_profile.dart';


class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

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
                    name: 'Mahmoud Ahmed',
                    role: 'Specialist, Doctor',
                    imagePath: 'assets/images/hjk.png'),
                SizedBox(height: height * 0.02),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.91,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19,bottom: 0.2),
                      child: BuildCard(
                        backGround: 'assets/images/abc.png',
                        title: 'Calls   .',
                        subtitle: 'You have new +1 Request',
                        iconPath: 'assets/images/rr.png',
                        hight:600,
                        width: 240,
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BuildCard(
                        backGround: 'assets/images/dfg.png',
                        title: 'Tasks   .',
                        subtitle: 'You have new +1 Task',
                        iconPath: 'assets/images/dd.png',
                        hight: 230,
                        width: 240,
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: BuildCard(
                        backGround: 'assets/images/hh.png',
                        title: 'Reports   .',
                        subtitle: 'You have new +3 Report',
                        iconPath: 'assets/images/aa.png',
                        hight: 240,
                        width: 240,
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
                        hight: 600,
                        width: 240,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              //  SizedBox(height: height * 0),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: GestureDetector(
                    onTap: () {},
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/cc.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 100,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Cases',
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                            ),
                            Image.asset(
                              'assets/images/kl.png',
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
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
