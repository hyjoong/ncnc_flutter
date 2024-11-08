import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/custom_app_bar.dart';
import 'package:ncnc_flutter/components/product_list.dart';
import 'package:ncnc_flutter/models/product_model.dart';
import 'package:ncnc_flutter/repositories/brand_product_repository.dart';

class BrandProductScreen extends StatefulWidget {
  final int brandId;
  final String brandName;

  const BrandProductScreen({
    super.key,
    required this.brandId,
    required this.brandName,
  });

  @override
  State<BrandProductScreen> createState() => _BrandProductScreenState();
}

class _BrandProductScreenState extends State<BrandProductScreen> {
  final _repository = BrandProductRepository();
  late Future<List<Product>> products;

  @override
  void initState() {
    super.initState();
    products = _repository.getBrandProducts(widget.brandId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.brandName,
        isHomeScreen: false,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<List<Product>>(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ProductList(products: snapshot.data!);
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
