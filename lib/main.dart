import 'package:flutter/material.dart';

void main() {
  runApp(const UbudgetApp());
}

class UbudgetApp extends StatelessWidget {
  const UbudgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ubudget',
      home: const UbudgetDashboardScreen(),
    );
  }
}

class UbudgetDashboardScreen extends StatelessWidget {
  const UbudgetDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const navy = Color(0xFF142B4A);
    const emerald = Color(0xFF16A078);
    const background = Color(0xFFF5F7FA);
    const cardWhite = Color(0xFFFFFFFF);
    const softRed = Color(0xFFE85D5D);

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ubudget',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: navy,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Track Smart. Spend Wisely.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF5A6577),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: cardWhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'PHP (₱)',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: navy,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              // Remaining Balance Summary Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: navy,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Remaining Balance',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFD6E0EE),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '₱14,850.00',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: cardWhite,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Monthly budget overview (sample preview)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFB8C6DA),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: cardWhite,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Total Income',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5A6577),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '₱25,000.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: emerald,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: cardWhite,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Total Expenses',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5A6577),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '₱10,150.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: softRed,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: navy,
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: cardWhite,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Groceries & Meals',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: navy,
                              ),
                            ),
                            Text(
                              'Food • Today',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF5A6577),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '-₱650.00',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: softRed,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Allowance / Paycheck',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: navy,
                              ),
                            ),
                            Text(
                              'Income • Nov 20',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF5A6577),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '+₱10,000.00',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: emerald,
                          ),
                        ),
                      ],
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
