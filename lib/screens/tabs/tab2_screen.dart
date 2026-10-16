import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • All Trip Expenses')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _expRow('Airport Express Narita', '\$48.00'),
          _expRow('Convenience Store Snack Run', '\$24.50'),
          _expRow('Fushimi Inari Guided Tour', '\$120.00'),
        ],
      ),
    );
  }

  Widget _expRow(String t, String v) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(t, style: const TextStyle(fontWeight: FontWeight.w600)),
          Text(v, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

