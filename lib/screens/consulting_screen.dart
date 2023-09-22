// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wellness_app/models/consultant.dart';
import 'package:wellness_app/theme/colors.dart';
import 'package:wellness_app/theme/style.dart';
import 'package:wellness_app/widgets/banner_card.dart';
import 'package:wellness_app/widgets/consultant_item.dart';

class ConsultingScreen extends StatefulWidget {
  const ConsultingScreen({super.key});

  @override
  State<ConsultingScreen> createState() => _ConsultingScreenState();
}

class _ConsultingScreenState extends State<ConsultingScreen> {
  String selectedValue = 'All Sessions';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 500) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: BannerCard(
                  backgroundColor: AppColors.secondaryColor,
                  accentColor: AppColors.primaryColor.withOpacity(0.2),
                  title: 'Upcomming Session',
                  subtitle: 'Sahana V, Msc in Clinical Psychology',
                  time: '7:30 PM - 8:30 PM',
                  buttonIcon: Icons.play_circle,
                  buttonText: 'Join Now',
                  textColor: AppColors.primaryColor,
                  mainTextColor: const Color(0xFF573926),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      _showDropdown(context);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.transparent,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10,
                        children: [
                          Text(
                            selectedValue,
                            style: CustomStyle.defaultTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.sort),
                    onSelected: choiceAction,
                    itemBuilder: (BuildContext context) {
                      return Constants.choices.map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 20, // Jarak antara dua konsultan dalam satu baris
                children: consultantList.map((Consultant list) {
                  String formattedDate =
                      DateFormat("d MMMM ''yy").format(list.datetime);
                  String formattedStartTime =
                      DateFormat("h:mm a").format(list.datetime);
                  String formattedEndTime = DateFormat("h:mm a")
                      .format(list.datetime.add(const Duration(hours: 1)));
                  String formattedDateTimeRange =
                      '$formattedStartTime - $formattedEndTime';

                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 12,
                    ),
                    child: ConsultantItem(
                      name: list.name,
                      degree: list.degree,
                      imageUrl: list.imageUrl,
                      date: formattedDate,
                      time: formattedDateTimeRange,
                    ),
                  );
                }).toList(),
              ),
            ],
          );
        } else {
          return Column(
            children: [
              BannerCard(
                backgroundColor: AppColors.secondaryColor,
                accentColor: AppColors.primaryColor.withOpacity(0.2),
                title: 'Upcomming Session',
                subtitle: 'Sahana V, Msc in Clinical Psychology',
                time: '7:30 PM - 8:30 PM',
                buttonIcon: Icons.play_circle,
                buttonText: 'Join Now',
                textColor: AppColors.primaryColor,
                mainTextColor: const Color(0xFF573926),
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      _showDropdown(context);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.transparent,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10,
                        children: [
                          Text(
                            selectedValue,
                            style: CustomStyle.defaultTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.sort),
                    onSelected: choiceAction,
                    itemBuilder: (BuildContext context) {
                      return Constants.choices.map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: consultantList.length,
                itemBuilder: (context, index) {
                  Consultant list = consultantList[index];
                  String formattedDate =
                      DateFormat("d MMMM ''yy").format(list.datetime);
                  String formattedStartTime =
                      DateFormat("h:mm a").format(list.datetime);
                  String formattedEndTime = DateFormat("h:mm a")
                      .format(list.datetime.add(const Duration(hours: 1)));
                  String formattedDateTimeRange =
                      '$formattedStartTime - $formattedEndTime';

                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 12,
                    ),
                    child: ConsultantItem(
                      name: list.name,
                      degree: list.degree,
                      imageUrl: list.imageUrl,
                      date: formattedDate,
                      time: formattedDateTimeRange,
                    ),
                  );
                },
              ),
            ],
          );
        }
      },
    );
  }

  void _showDropdown(BuildContext context) {
    final List<String> options = [
      'Session 1',
      'Session 2',
      'Session 3',
      'Session 4',
      'All Sessions',
    ];

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 260,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Center(
                    child: Text(
                      'Filter By Session',
                      style: CustomStyle.defaultTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(options[index]),
                      onTap: () {
                        setState(() {
                          selectedValue =
                              options[index]; // Perbarui teks yang dipilih
                        });
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Constants {
  static const String FirstItem = 'Latest';
  static const String SecondItem = 'Oldest';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.FirstItem) {
    print('Latest clicked');
  } else if (choice == Constants.SecondItem) {
    print('Oldest clicked');
  }
}
