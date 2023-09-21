import 'package:flutter/material.dart';
import 'package:wellness_app/helpers/formatting.dart';
import 'package:wellness_app/models/community.dart';
import 'package:wellness_app/theme/colors.dart';
import 'package:wellness_app/theme/style.dart';
import 'package:wellness_app/widgets/community_post.dart';
import 'package:wellness_app/widgets/primary_button.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool _isActive = false;

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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 12,
            children: [
              PrimaryButton(
                title: 'Trending',
                isActive: _isActive,
                onTap: () {
                  setState(() {
                    _isActive = !_isActive;
                  });
                },
              ),
              PrimaryButton(
                title: 'Relationship',
                isActive: _isActive,
                onTap: () {
                  setState(() {
                    _isActive = !_isActive;
                  });
                },
              ),
              PrimaryButton(
                title: 'Self Care',
                isActive: _isActive,
                onTap: () {
                  setState(() {
                    _isActive = !_isActive;
                  });
                },
              ),
            ],
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
