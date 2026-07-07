import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';
import 'package:grace_community/components/selection_tile.dart';

class GivingStep2Screen extends StatelessWidget {
  final VoidCallback onBackStep;

  const GivingStep2Screen({
    super.key,
    required this.onBackStep,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Select Fund',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Choose where you\'d like your gift to go.',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
        const SizedBox(height: 16),
        SelectionTile(
          icon: Icons.church,
          title: 'General Fund',
          subtitle:
              'Supports the overall mission, ministry, and daily operations of Unity & Grace.',
          isSelected: true,
          useCheckIcon: true,
          onTap: () {},
        ),
        SelectionTile(
          icon: Icons.domain,
          title: 'Building Fund',
          subtitle:
              'Dedicated to the expansion and maintenance of our sanctuary and community spaces.',
          isSelected: false,
          useCheckIcon: true,
          onTap: () {},
        ),
        SelectionTile(
          icon: Icons.public,
          title: 'Missions',
          subtitle:
              'Direct support for local outreach programs and international mission partners.',
          isSelected: false,
          useCheckIcon: true,
          onTap: () {},
        ),
        const SizedBox(height: 16),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Payment Method',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Choose a secure way to complete your donation.',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
        const SizedBox(height: 16),
        SelectionTile(
          icon: Icons.credit_card,
          title: 'Visa ending in 4242',
          subtitle: 'Expires 12/26',
          isSelected: true,
          onTap: () {},
        ),
        SelectionTile(
          icon: Icons.phone_android,
          title: 'Apple Pay',
          subtitle: 'Quick checkout via your device wallet',
          isSelected: false,
          onTap: () {},
        ),
        SelectionTile(
          icon: Icons.account_balance,
          title: 'Bank Account (ACH)',
          subtitle: 'Direct secure bank routing account link',
          isSelected: false,
          onTap: () {},
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 20),
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Add New Payment Method'),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primaryColor,
              side: BorderSide(
                color: AppColors.primaryColor.withOpacity(0.3),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEF6).withOpacity(0.4),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.verified_user_outlined,
                color: Color(0xFF0F624C),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Secure Transaction',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F624C),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Your contribution is processed using 256-bit encryption. Unity & Grace never stores your full card details.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: OutlinedButton(
                  onPressed: onBackStep,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF1A1A1A),
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Back',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Review Donation',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_right, size: 18),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}