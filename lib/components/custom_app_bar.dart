import 'package:flutter/material.dart';
import 'package:ncnc_flutter/const/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isHomeScreen;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.isHomeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 8),
          icon: Icon(isHomeScreen ? Icons.dehaze : Icons.chevron_left),
          onPressed: isHomeScreen
              ? () {}
              : () {
                  Navigator.of(context).pop();
                },
        ),
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: secondaryColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
