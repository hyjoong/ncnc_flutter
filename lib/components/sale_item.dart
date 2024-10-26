import 'package:flutter/material.dart';
import 'package:ncnc_flutter/const/color.dart';
import 'package:ncnc_flutter/models/sale_model.dart';

class SaleItemWidget extends StatelessWidget {
  final SaleItem item;

  const SaleItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: secondaryColor,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                height: 70, // ItemContent 높이
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${item.discountRate}%',
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: lightRed,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 10),
                        // 판매가
                        Text(
                          '${item.ncSellingPrice.toString()}원',
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: accentColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '${item.originalPrice.toString()}원',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: darkGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
