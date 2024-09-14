import 'package:fitness_care_ui/pages/health_details.dart';
import 'package:fitness_care_ui/utils/colors.dart';
import 'package:fitness_care_ui/widgets/icon_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/custom_text_widget.dart';
import '../widgets/circle_btn.dart';
import '../widgets/gird_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const customCircleBtn(
            icon: Icons.menu,
          ),
          actions: const [
            customCircleBtn(icon: Icons.notification_add_outlined)
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextWidget(
                  text: "Make Your",
                  Size: 40,
                ),
                CustomTextWidget(
                  text: "Body Perfect",
                  Size: 40,
                  color: primaryColor,
                ),
                SizedBox(height: screenHeight * 0.03),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      height: screenHeight * .30,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const CustomTextWidget(
                              text: "Full Body \nExcercise X3",
                              Size: 30,
                              color: Colors.black,
                              isfontbold: true,
                            ),
                            icon_text_widget(
                                icon: Icons.local_fire_department_outlined,
                                text: " 1230 kCal",
                                fontSize: 12,
                                color: secondaryColor),
                            icon_text_widget(
                                icon: Icons.timer_sharp,
                                text: " 50 min",
                                fontSize: 12,
                                color: secondaryColor),
                            ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                      Color(0xffB9CF30))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const HealthDetails();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Start Now",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      bottom: -25,
                      child: Image.asset(
                        alignment: Alignment.topRight,
                        "assets/images/fitnessboy.png",
                        height: 300,
                        width: 300,
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight * .03),
                Row(
                  children: [
                    Expanded(
                      child: gridContainerWidget(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        icon: Icons.directions_run_sharp,
                        primaryText: "Running \nDistance",
                        secondaryText: "7.3 km",
                        containerBgColor: primaryColor,
                        iconBgColor: btnBackgroundprimaryColor,
                        iconColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: gridContainerWidget(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        icon: Icons.directions_bike,
                        primaryText: "Total \nCycling",
                        secondaryText: "7.3 km",
                        containerBgColor: secondaryColor,
                        iconBgColor: btnBackgrounColor,
                        iconColor: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight * .02),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 25, right: 10),
                  shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.circular(40)),
                  // contentPadding: EdgeInsets.zero,
                  tileColor: secondaryColor,
                  //dense: false,
                  title: const CustomTextWidget(text: "Appointment"),
                  subtitle: CustomTextWidget(
                    text: "for a exercise practice",
                    Size: 17,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  trailing: customCircleBtn(
                    icon: Icons.call,
                    iconBgColor: primaryColor,
                    iconColor: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
