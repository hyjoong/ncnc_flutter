import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/custom_app_bar.dart';
import 'package:ncnc_flutter/components/icon_card_grid.dart';
import 'package:ncnc_flutter/components/product_list.dart';
import 'package:ncnc_flutter/const/color.dart';
import 'package:ncnc_flutter/models/category_model.dart';
import 'package:ncnc_flutter/models/product_model.dart';
import 'package:ncnc_flutter/screen/brand_screen.dart';
import 'package:ncnc_flutter/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Category>> categories;
  late Future<List<Product>> saleItems;

  @override
  void initState() {
    super.initState();
    categories = ApiService.getCategories();
    saleItems = ApiService.getSaleItems();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '니콘내콘',
        isHomeScreen: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            categories = ApiService.getCategories();
            saleItems = ApiService.getSaleItems();
          });
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder<List<Category>>(
                future: categories,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final items = snapshot.data!
                        .map((category) => (
                              imageUrl: category.imageUrl,
                              title: category.name,
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => BrandScreen(
                                      categoryId: category.id,
                                      categoryName: category.name,
                                    ),
                                  ),
                                );
                              },
                            ))
                        .toList();
                    return IconCardGrid(items: items);
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
              const SizedBox(height: 14),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: Text(
                    '놓치지 마세요',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: darkRed,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '오늘의 땡처리콘!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              FutureBuilder<List<Product>>(
                future: saleItems,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ProductList(products: snapshot.data!);
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
