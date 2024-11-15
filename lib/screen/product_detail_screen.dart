import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/custom_app_bar.dart';
import 'package:ncnc_flutter/components/loading/product_detail_skeleton.dart';
import 'package:ncnc_flutter/components/option_bottom_sheet.dart';
import 'package:ncnc_flutter/components/product_card.dart';
import 'package:ncnc_flutter/const/color.dart';
import 'package:ncnc_flutter/models/item_detail_model.dart';
import 'package:ncnc_flutter/repositories/product_detail_repository.dart';

class ProductDetailScreen extends StatefulWidget {
  final int productId;

  const ProductDetailScreen({
    super.key,
    required this.productId,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final _repository = ProductDetailRepository();
  late Future<ItemDetail> itemDetail;

  @override
  void initState() {
    super.initState();
    itemDetail = _repository.getItemDetail(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: '',
        isHomeScreen: false,
      ),
      body: FutureBuilder<ItemDetail>(
        future: itemDetail,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const ProductDetailSkeleton();
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return const Center(child: Text('데이터가 없습니다'));
          }

          final item = snapshot.data!;
          return Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 56,
                  ),
                  color: secondaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductCard(
                        imageUrl: item.imageUrl,
                        name: item.name,
                        discountRate: item.discountRate.toDouble(),
                        ncSellingPrice: item.ncSellingPrice,
                        originalPrice: item.originalPrice,
                        onTap: () {},
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item.conCategory2.conCategory1.info ?? '상품 정보가 없습니다.',
                          style: const TextStyle(
                            fontSize: 14,
                            color: darkGrey,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 56), // Bottom 높이만큼 여백
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: lightRed,
                  ),
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => OptionBottomSheet(
                          options: item.options,
                          discountRate: item.discountRate,
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: secondaryColor,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text('옵션 선택하기'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
