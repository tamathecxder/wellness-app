import 'package:flutter/material.dart';
import 'package:wellness_app/theme/colors.dart';
import 'package:wellness_app/theme/style.dart';

class CommunityPost extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String postTime;
  final String description;
  final int likeCount;
  final int commentCount;

  const CommunityPost({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.postTime,
    required this.description,
    required this.likeCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 0,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      "assets/images/$imageUrl",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            name,
                            style: CustomStyle.descriptionTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.brownColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '•',
                          style: CustomStyle.descriptionTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textGrayColor,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          postTime.toString(),
                          style: CustomStyle.descriptionTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: AppColors.textGrayColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      description,
                      style: CustomStyle.defaultTextStyle.copyWith(
                        color: AppColors.brownColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          spacing: 20,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  icon: Icon(Icons.thumb_up_alt_outlined,
                                      size: 16,
                                      color: (likeCount > 0)
                                          ? AppColors.primaryColor
                                          : AppColors.textGrayColor),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                (likeCount > 0)
                                    ? Text(
                                        likeCount.toString(),
                                        style: CustomStyle.defaultTextStyle
                                            .copyWith(
                                          color: (likeCount > 0)
                                              ? AppColors.primaryColor
                                              : AppColors.textGrayColor,
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  icon: Icon(
                                    Icons.mode_comment_outlined,
                                    size: 16,
                                    color: (commentCount > 0)
                                        ? AppColors.primaryColor
                                        : AppColors.textGrayColor,
                                  ),
                                ),
                                commentCount > 0
                                    ? Text(
                                        commentCount.toString(),
                                        style: CustomStyle.defaultTextStyle
                                            .copyWith(
                                          color: (commentCount > 0)
                                              ? AppColors.primaryColor
                                              : AppColors.textGrayColor,
                                        ),
                                      )
                                    : const SizedBox()
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: const Icon(
                                Icons.ios_share,
                                size: 16,
                                color: AppColors.textGrayColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: Color(0xFFD9D8D8),
            height: 1,
          ),
        ],
      ),
    );
  }
}
