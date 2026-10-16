import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final balances = [
      {'who': 'Alex owes You', 'amt': '\$115.00', 'pos': true},
      {'who': 'You owe Kenji', 'amt': '\$42.50', 'pos': false},
      {'who': 'Sarah owes You', 'amt': '\$80.00', 'pos': true},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Settle Up Debts')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: balances.length,
        itemBuilder: (context, i) {
          final b = balances[i];
          final pos = b['pos'] as bool;
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(b['who'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ElevatedButton(
                  onPressed: () => RoutingService.openRegistrationUrl(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: pos ? AppTheme.primaryColor : Colors.white12,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(b['amt'] as String),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

