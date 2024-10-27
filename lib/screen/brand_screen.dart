import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/custom_app_bar.dart';
import 'package:ncnc_flutter/components/icon_card_grid.dart';
import 'package:ncnc_flutter/models/brand_model.dart';
import 'package:ncnc_flutter/services/api_service.dart';

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
  late Future<List<Brand>> brands;

  @override
  void initState() {
    super.initState();
    brands = ApiService.getBrands(widget.categoryId);
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
                        // TODO: 브랜드 상세 페이지로 이동
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
