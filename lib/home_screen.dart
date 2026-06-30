import 'package:flutter/material.dart';
import 'package:grace_community/components/story_avatar.dart';
import 'package:grace_community/resources/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.church, color: Colors.white),
        ),
        title: Text(
          "Grace Community",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.location_on_outlined,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Community Stories',
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    debugPrint('View All Clicked');
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    StoryAvatar(
                      imageUrl: 'assets/icons/image1.jpg',
                      storyName: 'Sarah J.',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image2.jpg',
                      storyName: 'Youth',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image3.jpg',
                      storyName: 'Building',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image1.jpg',
                      storyName: 'Worship',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image2.jpg',
                      storyName: 'Outreach',
                      isViewed: false,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            //countdown card
            Card(
              elevation: 0,
              color: const Color(0xFFF4F4FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 16,
                          color: Colors.green.shade700,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'NEXT GATHERING',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade700,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Sunday Service',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Join us for a time of worship, community, and inspiration as we explore our new series.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _buildCountdownUnit('02', 'DAYS'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            ':',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                        _buildCountdownUnit('04', 'HOURS'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            //blue card
            Card(
              elevation: 0,
              color: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: -10,
                    top: -10,
                    child: Icon(
                      //watermark
                      Icons.volunteer_activism_outlined,
                      size: 80,
                      color: Colors.white.withOpacity(0.08),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                      horizontal: 20.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Center(
                          child: Text(
                            'Impact the Mission',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Your generosity fuels our local and global community outreach.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.9),
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: AppColors.primaryColor,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            'Give Now',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            //youth card
            Card(
              elevation: 0,
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.grey.shade100),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/youth.jpg',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFB34200),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'New Registration',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Youth Summer Camp Registration Open',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Secure a spot for your middle and high schoolers for a week of transformation and fun at Lakeview Camp.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text('Read More'),
                            ),
                            const SizedBox(width: 12),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.primaryColor,
                                side: BorderSide(
                                  color: AppColors.primaryColor.withOpacity(
                                    0.3,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text('Share'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            //three cards
            _buildMenuCard(
              context,
              title: 'Weekly Bulletin',
              subtitle: "View what's happening this week",
              icon: Icons.menu_book_outlined,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              context,
              title: 'Join a LifeGroup',
              subtitle: 'Find your circle of community',
              icon: Icons.people_outline,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              context,
              title: 'Prayer Request',
              subtitle: 'How can we pray for you?',
              icon: Icons.request_quote_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCountdownUnit(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
            height: 1.0,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Icon(icon, color: Colors.indigo),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
