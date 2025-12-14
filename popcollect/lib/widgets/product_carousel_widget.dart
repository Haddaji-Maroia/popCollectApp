import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/product_card.dart';
import 'package:popcollect2/widgets/product_item.dart';


class ProductCarouselWidget extends StatelessWidget {
  const ProductCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductItem(imagePath: 'assets/images/pandaWednesday.jpg', title: 'SKULLPANDA × We..'),
                  SizedBox(width: 12),
                  ProductItem(imagePath: 'assets/images/bunnyHirono.jpg', title: 'Hirono Monsters...'),
                  SizedBox(width: 12),
                  ProductItem(imagePath: 'assets/images/iron-man.jpg', title: 'Marvel Across th..'),
                  SizedBox(width: 12),
                  ProductItem(imagePath: 'assets/images/crybaby.jpg', title: 'CRYBABY CRYING...'),
                ],
              )
          );
  }
}

