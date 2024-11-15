import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ncnc_flutter/const/color.dart';

class ProductDetailSkeleton extends StatelessWidget {
  const ProductDetailSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
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
                Shimmer.fromColors(
                  baseColor: skeletonBaseColor,
                  highlightColor: skeletonHighlightColor,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 14,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 8),
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Shimmer.fromColors(
                    baseColor: skeletonBaseColor,
                    highlightColor: skeletonHighlightColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < 10; i++) ...[
                          Container(
                            width: double.infinity,
                            height: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 8),
                        ]
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 56),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Shimmer.fromColors(
            baseColor: skeletonBaseColor,
            highlightColor: skeletonHighlightColor,
            child: Container(
              width: double.infinity,
              height: 56,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
