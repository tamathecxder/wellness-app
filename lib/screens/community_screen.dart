import 'package:flutter/material.dart';
import 'package:wellness_app/helpers/formatting.dart';
import 'package:wellness_app/models/category.dart';
import 'package:wellness_app/models/community.dart';
import 'package:wellness_app/theme/style.dart';
import 'package:wellness_app/widgets/community_post.dart';
import 'package:wellness_app/widgets/primary_button.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Wellness Hub',
          style: CustomStyle.defaultTextStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              final category = categoryList[index];

              return Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                ),
                child: PrimaryButton(
                  title: category.title,
                  isActive: category.isActive,
                  onTap: () {
                    setState(() {
                      category.isActive = !category.isActive;
                    });
                  },
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemCount: communityList.length,
          itemBuilder: (context, index) {
            Community community = communityList[index];

            String formattedPostTime =
                Formatting.formatTimeAgo(community.postTime);

            return CommunityPost(
              name: community.name,
              imageUrl: community.imageUrl,
              description: community.description,
              postTime: formattedPostTime,
              likeCount: community.likeCount,
              commentCount: community.commentCount,
            );
          },
        ),
      ],
    );
  }
}
