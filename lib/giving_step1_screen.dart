import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';

class GivingStep1Screen extends StatelessWidget {
  final TextEditingController amountController;
  final String selectedFrequency;
  final Function(String) onFrequencyChanged;
  final Function(String) onSetAmount;
  final VoidCallback onNextStep;

  const GivingStep1Screen({
    super.key,
    required this.amountController,
    required this.selectedFrequency,
    required this.onFrequencyChanged,
    required this.onSetAmount,
    required this.onNextStep,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Make a Gift',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A1A),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Your generosity fuels our mission and community.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
        const SizedBox(height: 32),
        Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Giving Amount',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                  decoration: InputDecoration(
                    prefix: const Text(
                      '\$ ',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: '0.00',
                    hintStyle: TextStyle(
                      fontSize: 48,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 1,
                  height: 24,
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 12,
                  children: [
                    _buildAmountButton('\$10', '10.00'),
                    _buildAmountButton('\$50', '50.00'),
                    _buildAmountButton('\$100', '100.00'),
                    _buildOtherButton(),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Frequency',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F0F8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      _buildFrequencyButton('One-time'),
                      _buildFrequencyButton('Weekly'),
                      _buildFrequencyButton('Monthly'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Direct my gift to',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'General Fund',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.lock, size: 16, color: Colors.grey.shade600),
                    const SizedBox(width: 8),
                    Text(
                      'Secure 256-bit SSL Encryption',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onNextStep,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Next Step',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'By continuing, you agree to our terms and privacy\npolicy. 100% of your gift is tax-deductible.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
      ],
    );
  }

  Widget _buildAmountButton(String label, String value) {
    return OutlinedButton(
      onPressed: () => onSetAmount(value),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade300),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildOtherButton() {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade300),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text(
        'Other',
        style: TextStyle(
          fontSize: 14,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildFrequencyButton(String label) {
    final isSelected = selectedFrequency == label;
    return Expanded(
      child: GestureDetector(
        onTap: () => onFrequencyChanged(label),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isSelected ? AppColors.primaryColor : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}