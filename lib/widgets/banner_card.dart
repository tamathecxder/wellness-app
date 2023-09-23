import 'package:flutter/material.dart';
import 'package:wellness_app/theme/style.dart';

class BannerCard extends StatelessWidget {
  final Color backgroundColor;
  final Color accentColor;
  final Color textColor;
  final Color mainTextColor;
  final String? imagePath;
  final String title;
  final String subtitle;
  final String? time;
  final String buttonText;
  final IconData buttonIcon;

  const BannerCard({
    super.key,
    this.imagePath,
    this.time,
    required this.backgroundColor,
    required this.accentColor,
    required this.title,
    required this.mainTextColor,
    required this.textColor,
    required this.subtitle,
    required this.buttonText,
    required this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: 325.0,
        height: time != null ? 180 : 150,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24.0,
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: mainTextColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          child: Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: subtitle,
                                style:
                                    CustomStyle.descriptionTextStyle.copyWith(
                                  fontSize: 12,
                                  color: mainTextColor,
                                ),
                              )
                            ]),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        time != null
                            ? Flexible(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: time,
                                        style: CustomStyle.descriptionTextStyle
                                            .copyWith(
                                          fontSize: 12,
                                          color: mainTextColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : const SizedBox(),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(50, 30),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                alignment: Alignment.centerLeft,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    buttonText,
                                    style:
                                        CustomStyle.defaultTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Icon(
                                    buttonIcon,
                                    color: textColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 80,
                      child: imagePath != null
                          ? Image.asset(imagePath!)
                          : const SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -180,
              right: -80,
              child: Container(
                width: 220,
                height: 200,
                decoration: BoxDecoration(
                  color: accentColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
