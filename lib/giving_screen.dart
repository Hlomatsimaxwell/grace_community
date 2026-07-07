import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';
import 'package:grace_community/giving_step1_screen.dart';
import 'package:grace_community/giving_step2_screen.dart';

class GivingScreen extends StatefulWidget {
  const GivingScreen({super.key});

  @override
  State<GivingScreen> createState() => _GivingScreenState();
}

class _GivingScreenState extends State<GivingScreen> {
  late TextEditingController _amountController;
  String _selectedFrequency = 'One-time';
  int _currentStep = 1;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  void _goToStep(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 16),
          _buildStepTracker(),
          const SizedBox(height: 24),
          if (_currentStep == 1)
            GivingStep1Screen(
              amountController: _amountController,
              selectedFrequency: _selectedFrequency,
              onFrequencyChanged: (frequency) {
                setState(() {
                  _selectedFrequency = frequency;
                });
              },
              onSetAmount: (amount) {
                setState(() {
                  _amountController.text = amount;
                });
              },
              onNextStep: () => _goToStep(2),
            )
          else if (_currentStep == 2)
            GivingStep2Screen(
              onBackStep: () => _goToStep(1),
            ),
        ],
      ),
    );
  }

  Widget _buildStepTracker() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 4),
              Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: _currentStep == 2
                      ? AppColors.primaryColor
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 4),
              Container(
                width: 16,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
          Text(
            'Step $_currentStep of 3',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }
}