import 'package:flutter/material.dart';
import 'package:ncnc_flutter/const/color.dart';
import 'package:shimmer/shimmer.dart';

class ProductCardSkeleton extends StatelessWidget {
  final int itemCount;

  const ProductCardSkeleton({
    super.key,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (_, __) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Shimmer.fromColors(
            baseColor: skeletonBaseColor,
            highlightColor: skeletonHighlightColor,
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  color: secondaryColor,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 14,
                        color: secondaryColor,
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 18,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 80,
                            height: 18,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
