import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ncnc_flutter/const/color.dart';
import 'package:shimmer/shimmer.dart';

class IconGridSkeleton extends StatelessWidget {
  final int itemCount;

  const IconGridSkeleton({
    super.key,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: itemCount,
      itemBuilder: (_, __) => Shimmer.fromColors(
        baseColor: skeletonBaseColor,
        highlightColor: skeletonHighlightColor,
        child: Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 50, height: 50, color: secondaryColor),
              const SizedBox(height: 8),
              Container(
                width: 60,
                height: 14,
                color: secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
