import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExchangeWidget extends StatelessWidget {
  const ExchangeWidget({
    Key? key,
    required this.title,
    required this.date,
    required this.rate,
    required this.change,
    required this.icon,
  }) : super(key: key);

  final Image icon;
  final String title;
  final String date;
  final String rate;
  final num change;

  @override
  Widget build(BuildContext context) {
    final a = NumberFormat.currency(locale: 'fa', symbol: ',')
        .format(double.parse(rate));

    final isDecrease = change.toString().contains("-");
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 4,
          ),
          icon,
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 64,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                NumberFormat.currency(
                  locale: 'fa',
                  symbol: '',
                ).format(double.parse(rate)),
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 232, 224, 10)),
              ),
              Row(
                children: [
                  Text(
                    NumberFormat.currency(
                      locale: 'fa',
                      symbol: '',
                    ).format(double.parse(change.toString().substring(1))),
                    style: TextStyle(
                      fontSize: 24,
                      color: isDecrease
                          ? const Color.fromARGB(255, 244, 67, 54)
                          : Colors.green,
                    ),
                  ),
                  isDecrease
                      ? const Icon(
                          Icons.arrow_downward,
                          color: Color.fromARGB(255, 244, 67, 54),
                        )
                      : const Icon(
                          Icons.arrow_upward,
                          color: Colors.green,
                        ),
                ],
              ),
            ],
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
