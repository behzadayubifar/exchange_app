import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExchangeWidget extends StatelessWidget {
  const ExchangeWidget({
    Key? key,
    this.title,
    this.date,
    this.rate,
    this.change,
    this.icon,
  }) : super(key: key);

  final Image? icon;
  final String? title;
  final String? date;
  final String? rate;
  final num? change;

  @override
  Widget build(BuildContext context) {
    final isDecrease = change.toString().contains("-");
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 4,
          ),
          icon!,

          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                date!,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          // const SizedBox(
          //   width: 64,
          // ),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                NumberFormat.currency(
                  locale: 'fa',
                  symbol: '',
                ).format(double.parse(rate!)),
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 232, 224, 10)),
              ),
              Row(
                children: [
                  Text(
                    NumberFormat.currency(
                      locale: 'fa',
                      symbol: '',
                    ).format(change),
                    style: TextStyle(
                      fontSize: 16,
                      color: isDecrease
                          ? const Color.fromARGB(255, 244, 67, 54)
                          : change == 0
                              ? Color.fromARGB(143, 229, 243, 165)
                              : Colors.green,
                    ),
                  ),
                  isDecrease
                      ? const Icon(
                          Icons.arrow_downward,
                          color: Color.fromARGB(255, 244, 67, 54),
                        )
                      : change == 0
                          ? const SizedBox()
                          : const Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                            ),
                ],
              ),
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
