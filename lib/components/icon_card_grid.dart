import 'package:flutter/cupertino.dart';
import 'package:ncnc_flutter/components/icon_card.dart';

class IconCardGrid extends StatelessWidget {
  final List<({String imageUrl, String title, VoidCallback onTap})> items;

  const IconCardGrid({
    super.key,
    required this.items,
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
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return IconCard(
          imageUrl: item.imageUrl,
          title: item.title,
          onTap: item.onTap,
        );
      },
    );
  }
}
