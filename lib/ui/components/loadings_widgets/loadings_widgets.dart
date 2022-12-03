import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/generated/l10n.dart';
import 'package:shimmer/shimmer.dart';

class LoadingsWidgets {
  static Shimmer appBarTitleLoad = Shimmer.fromColors(
    baseColor: Colors.grey,
    highlightColor: Colors.white,
    child: Text(
      S.current.title,
      style: const TextStyle(fontSize: 24),
    ),
  );
  static Shimmer contentLoading = Shimmer.fromColors(
    baseColor: Colors.grey, 
    highlightColor: Colors.black,
    child: CarouselSlider.builder(
      itemCount: 10, 
      itemBuilder: (context, index, realIndex) => Container(
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white
        ),
      ), 
      options: CarouselOptions(
        height: 250,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayCurve: Curves.decelerate,
        enlargeCenterPage: true
      ),
    ), 
  );
  
  static Shimmer allNewsItem = Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: Colors.grey,
    child: InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 320,
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              height: 16,
              width: 240,
              color: Colors.grey,
            ),
            Container(
              height: 16,
              width: 320,
              color: Colors.grey,
            ),
            Container(
              height: 16,
              width: 220,
              color: Colors.grey,
            ),
            Container(
              height: 16,
              width: 160,
              color: Colors.grey,
            ),
            // const Text('Loadings...'),
            // const Text('Loadings...')
          ],
        ),
      ),
    ),
  );
}
