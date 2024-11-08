import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/custom_app_bar.dart';
import 'package:ncnc_flutter/components/icon_card_grid.dart';
import 'package:ncnc_flutter/models/brand_model.dart';
import 'package:ncnc_flutter/screen/brand_product_screen.dart';
import 'package:ncnc_flutter/repositories/brand_repository.dart';

class BrandScreen extends StatefulWidget {
  final int categoryId;
  final String categoryName;

  const BrandScreen({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  final _repository = BrandRepository();
  late Future<List<Brand>> brands;

  @override
  void initState() {
    super.initState();
    brands = _repository.getBrands(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.categoryName,
        isHomeScreen: false,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<List<Brand>>(
          future: brands,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final items = snapshot.data!
                  .map(
                    (brand) => (
                      imageUrl: brand.imageUrl,
                      title: brand.name,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => BrandProductScreen(
                              brandId: brand.id,
                              brandName: brand.name,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                  .toList();
              return IconCardGrid(items: items);
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
