import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ncnc_flutter/const/color.dart';
import 'package:ncnc_flutter/models/item_option_model.dart';

class OptionBottomSheet extends StatelessWidget {
  final List<ItemOption> options;
  final int discountRate;

  const OptionBottomSheet({
    super.key,
    required this.options,
    required this.discountRate,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      builder: (_, controller) => Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.separated(
                controller: controller,
                itemCount: options.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  final option = options[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '유효기간: ${DateFormat('yyyy-MM-dd').format(option.expireAt)}까지',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '할인가: ${NumberFormat('#,###').format(int.parse(option.sellingPrice))}원',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '$discountRate%',
                          style: const TextStyle(
                            fontSize: 16,
                            color: darkRed,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
