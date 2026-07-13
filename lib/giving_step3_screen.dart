import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';

class GivingStep3Screen extends StatelessWidget {
  final String amount;
  final String fund;
  final String frequency;
  final VoidCallback onReturnHome;

  const GivingStep3Screen({
    super.key,
    required this.amount,
    required this.fund,
    required this.frequency,
    required this.onReturnHome,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF56FFA4),
              ),
              child: const Icon(
                Icons.favorite,
                size: 54,
                color: Color(0xFF0F624C),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFD2B2),
                ),
                child: const Icon(
                  Icons.celebration,
                  size: 18,
                  color: Color(0xFF9E4B13),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Thank you for your\ngenerosity!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Your gift empowers our community to grow and reach those in need. We are truly grateful for your support.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
        ),
        const SizedBox(height: 32),
        _buildSummaryBlock('Amount', '\$$amount'),
        _buildSummaryBlock('Fund', fund),
        _buildSummaryBlock('Frequency', frequency),
        const SizedBox(height: 24),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/icons/thank-you.jpg',
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                height: 160,
                color: Colors.black.withOpacity(0.35),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '"Each of you should give what you have decided in your heart to give, not reluctantly or under compulsion, for God loves a cheerful giver."',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: onReturnHome,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 0,
            ),
            child: const Text(
              'Return Home',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.receipt_long, size: 20),
            label: const Text('View Receipt', style: TextStyle(fontWeight: FontWeight.bold)),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primaryColor,
              side: BorderSide(color: AppColors.primaryColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryBlock(String label, String value) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F5FB),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: TextStyle(
              fontSize: label == 'Amount' ? 24 : 18,
              fontWeight: FontWeight.bold,
              color: label == 'Amount' ? AppColors.primaryColor : const Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }
}