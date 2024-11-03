import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ncnc_flutter/const/color.dart';

class IconCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  const IconCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                imageUrl,
                width: 50,
                height: 50,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 50,
                    height: 50,
                    color: grey,
                    child: const Icon(
                      Icons.image_not_supported_outlined,
                      color: grey,
                    ),
                  );
                },
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
