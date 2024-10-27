import 'package:flutter/material.dart';
import 'package:ncnc_flutter/const/color.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double discountRate;
  final int ncSellingPrice;
  final int originalPrice;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.discountRate,
    required this.ncSellingPrice,
    required this.originalPrice,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: secondaryColor,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '$discountRate%',
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: lightRed,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '${ncSellingPrice.toString()}원',
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: accentColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '${originalPrice.toString()}원',
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
      ),
    );
  }
}
