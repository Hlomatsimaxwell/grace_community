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
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF56FFA4),
          ),
          child: const Icon(
            Icons.favorite,
            size: 50,
            color: Color(0xFF0F624C),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Thank you for your\ngenerosity!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A1A),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Your gift empowers our community to grow and reach those in need. We are truly grateful for your support.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 32),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _buildSummaryRow('Amount', '\$$amount'),
                Divider(color: Colors.grey.shade200, height: 20),
                _buildSummaryRow('Fund', fund),
                Divider(color: Colors.grey.shade200, height: 20),
                _buildSummaryRow('Frequency', frequency),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/icons/thankYou.jpg',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onReturnHome,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
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
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.receipt_long),
            label: const Text('View Receipt'),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primaryColor,
              side: BorderSide(color: AppColors.primaryColor.withOpacity(0.3)),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A1A),
          ),
        ),
      ],
    );
  }
}