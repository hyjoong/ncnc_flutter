import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/sale_item.dart';
import 'package:ncnc_flutter/models/sale_model.dart';

class SaleList extends StatelessWidget {
  final List<SaleItem> items;

  const SaleList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return SaleItemWidget(item: items[index]);
      },
    );
  }
}