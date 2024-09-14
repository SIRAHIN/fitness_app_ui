import 'package:fitness_care_ui/data/blood_presure_data.dart';
import 'package:fitness_care_ui/utils/colors.dart';
import 'package:fitness_care_ui/utils/custom_text_widget.dart';
import 'package:fitness_care_ui/widgets/circle_btn.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/custome_grid_content.dart';
import '../widgets/custome_line_text.dart';

class HealthDetails extends StatelessWidget {
  const HealthDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const customCircleBtn(
          icon: Icons.arrow_back_ios_new,
          iconColor: Colors.white,
        ),
        actions: const [
          customCircleBtn(
            icon: Icons.notification_add_outlined,
            iconColor: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(
                text: "Health",
                Size: 35,
                color: Colors.white,
                isfontbold: true,
              ),
              CustomTextWidget(
                text: "Overview",
                Size: 35,
                color: primaryColor,
                isfontbold: true,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customeGridContent(
                          title: "Calories",
                          subTitle: "1360 kCal",
                        ),
                        customeGridContent(
                            title: "Protein", subTitle: "30 Gram"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customeGridContent(
                          title: "Sleep",
                          subTitle: "3 hour",
                        ),
                        customeGridContent(title: "Weight", subTitle: "65 KG"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: screenHeight * .25,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          customCircleBtn(
                            iconBgColor: btnBackgroundprimaryColor,
                            icon: Icons.heart_broken_outlined,
                            iconColor: Colors.black,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomTextWidget(
                                text: "851 ms",
                                Size: 27,
                                color: Colors.black,
                                isfontbold: true,
                              ),
                              CustomTextWidget(
                                text: "R-R interval",
                                Size: 18,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomeLineWithText(
                                screenWidth: screenWidth,
                                numberText: "850 ms",
                                isLineTure: true),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: CustomeLineWithText(
                                screenWidth: screenWidth,
                                numberText: "820 ms",
                                isLineTure: false),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: CustomeLineWithText(
                                screenWidth: screenWidth,
                                numberText: "810 ms",
                                isLineTure: false),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: screenHeight * .32,
                width: screenWidth,
                decoration: BoxDecoration(
                  //color: primaryColor,
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomTextWidget(text: "Blood Presure"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 160,
                        child: BarChart(
                          BarChartData(
                            maxY: 100,
                            minY: 10,
                            gridData: const FlGridData(
                              show: false
                            ),
                            titlesData: const FlTitlesData(
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false
                                )
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false
                                )
                              ),
                              // bottomTitles: AxisTitles(
                              //   sideTitles: SideTitles(
                              //     showTitles: false
                              //   )
                              // ),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false
                                )
                              ),
                              
                            ),

                            barGroups: bloodPresureData
                                .map(
                                  (e) => BarChartGroupData(
                                    x: 1,
                                    barRods: [
                                      BarChartRodData(
                                        toY: e["value"],
                                        color: primaryColor,
                                        width: 40,
                                        borderRadius: BorderRadius.circular(8),
                                        backDrawRodData: BackgroundBarChartRodData(
                                          color: btnBackgrounColor,
                                          //fromY: 100,
                                          show: true,
                                          toY: 100
                                        )
                                        )
                                    ]
                                    
                                    ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
