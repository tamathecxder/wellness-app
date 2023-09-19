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
                Icon(
                  Icons.keyboard_arrow_down,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.sort),
            )
          ],
        ),
      ],
    );
  }
}
