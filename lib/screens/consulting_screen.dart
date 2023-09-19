import 'package:flutter/material.dart';
import 'package:wellness_app/theme/colors.dart';
import 'package:wellness_app/theme/style.dart';
import 'package:wellness_app/widget/banner_card.dart';

class ConsultingScreen extends StatelessWidget {
  const ConsultingScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: [
                Text(
                  'All Sessions',
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
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sort),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 325.0,
          height: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.secondaryColor,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 22,
                                backgroundColor: AppColors.primaryColor,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('assets/images/1.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sahana V',
                                    style:
                                        CustomStyle.defaultTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Msc in Clinical Psychology',
                                    style: CustomStyle.descriptionTextStyle
                                        .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Wrap(
                                  spacing: 8,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.calendar_month_outlined,
                                      size: 12,
                                      color: AppColors.darkGrayColor,
                                    ),
                                    Text(
                                      '31st March ‘22',
                                      style: CustomStyle.descriptionTextStyle
                                          .copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Wrap(
                                  spacing: 8,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.timer_outlined,
                                      size: 12,
                                      color: AppColors.darkGrayColor,
                                    ),
                                    Text(
                                      '7:30 PM - 8:30 PM',
                                      style: CustomStyle.descriptionTextStyle
                                          .copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Reschedule',
                                    style:
                                        CustomStyle.defaultTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 36,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: const Size(50, 30),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  alignment: Alignment.centerLeft,
                                ),
                                child: Text(
                                  'Join Now',
                                  style: CustomStyle.defaultTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
