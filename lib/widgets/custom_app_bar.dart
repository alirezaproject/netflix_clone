// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:netflix/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({super.key, this.scrollOffset = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarbutton(
                    title: "Tv Show",
                    onTap: () => print('TV Shows'),
                  ),
                  _AppBarbutton(
                    title: "Movies",
                    onTap: () => print('Movies'),
                  ),
                  _AppBarbutton(
                    title: "My List",
                    onTap: () => print('My List'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBarbutton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _AppBarbutton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
    );
  }
}
