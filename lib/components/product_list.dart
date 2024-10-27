import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/product_card.dart';
import 'package:ncnc_flutter/models/product_model.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  const ProductList({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
          imageUrl: product.imageUrl,
          name: product.name,
          discountRate: product.discountRate,
          ncSellingPrice: product.ncSellingPrice,
          originalPrice: product.originalPrice,
          onTap: () {
            // TODO: product detail widget 이동
          },
        );
      },
    );
  }
}
