import 'package:flutter/material.dart';
import 'package:mbooking/shared/theme.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  BottomNavigationWidget({
    super.key,
    required this.onTap,
    required this.selectedIndex,
  });

  List itemBar = ['Home', 'Ticket', 'Movie', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      height: 100,
      color: blackColor,
      width: MediaQuery.of(context).size.width,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            itemBar.length,
            (index) => GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: Column(
                children: [
                  Image.asset(
                    selectedIndex == index
                        ? "assets/icons/${itemBar[index]}_active.png"
                        : "assets/icons/${itemBar[index]}.png",
                    width: 28,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "${itemBar[index]}",
                    style: selectedIndex == index
                        ? yellowTextStyle.copyWith(
                            fontWeight: bold, fontSize: 12)
                        : whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 12),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
