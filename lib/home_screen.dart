import 'package:flutter/material.dart';
import 'package:wellness_app/model/feeling.dart';
import 'package:wellness_app/screen/consulting_screen.dart';
import 'package:wellness_app/theme/colors.dart';
import 'package:wellness_app/theme/style.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:wellness_app/widget/banner_card.dart';
import 'package:wellness_app/widget/custom_appbar.dart';
import 'package:wellness_app/widget/feeling_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    ConsultingScreen(),
    Text(
      'Profile Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'About Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  static const List<IconData> iconList = [
    Icons.home_filled,
    Icons.videocam_outlined,
    Icons.chat_bubble_outline,
    Icons.people_outline_outlined,
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 25.0,
            ),
            child: Column(
              children: [
                const CustomAppbar(),
                _widgetOptions.elementAt(_selectedIndex),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapLocation: GapLocation.none,
        height: 80,
        icons: iconList,
        activeIndex: _selectedIndex,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => _onItemTapped(index),
        activeColor: AppColors.primaryColor,
        inactiveColor: AppColors.darkGrayColor,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Good Afternoon,\n',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: 'Sarina!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 26.0,
        ),
        const Text(
          'How are you feeling today?',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 82,
          child: ListView.builder(
            itemCount: feelingList.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var feeling = feelingList[index];

              return Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                ),
                child: FeelingItem(
                  image: feeling.image,
                  title: feeling.title,
                  backgroundColor: feeling.backgroundColor,
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(
          height: 26.0,
        ),
        BannerCard(
          backgroundColor: AppColors.secondaryColor,
          accentColor: AppColors.primaryColor.withOpacity(0.2),
          title: '1 on 1 Sessions',
          subtitle: 'Let’s open up to the things that matter the most ',
          buttonIcon: Icons.calendar_month,
          buttonText: 'Book Now',
          textColor: AppColors.primaryColor,
          imagePath: 'assets/images/hug.png',
          mainTextColor: const Color(0xFF573926),
        ),
        const SizedBox(
          height: 26.0,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 62,
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/journal.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Journal",
                      style: CustomStyle.defaultTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 62,
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/library.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Library",
                      style: CustomStyle.defaultTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.grayColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Flexible(
                flex: 7,
                child: Text(
                  '“It is better to conquer yourself than to win a thousand battles”',
                  style: CustomStyle.defaultTextStyle.copyWith(
                    color: AppColors.darkGrayColor,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: 30,
                  child: Image.asset(
                    'assets/images/quote.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 26,
        ),
        BannerCard(
          backgroundColor: AppColors.greenColor,
          accentColor: AppColors.greenColor.withOpacity(0.1),
          title: 'Plan Expired',
          subtitle: 'Get back chat access and session credits',
          buttonIcon: Icons.keyboard_arrow_right_sharp,
          buttonText: 'Buy More',
          textColor: Colors.white,
          imagePath: 'assets/images/meditation.png',
          mainTextColor: Colors.white,
        ),
      ],
    );
  }
}
