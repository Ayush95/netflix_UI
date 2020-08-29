import 'package:flutter/material.dart';
import 'package:netfix_app_new/widgets/responsive.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _Categories(
                  text: 'TV Shows',
                  onTap: () => print('TV Shows'),
                ),
                _Categories(
                  text: 'Movies',
                  onTap: () => print('Movies'),
                ),
                _Categories(
                  text: 'My List',
                  onTap: () => print('My List'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _Categories(
                  text: 'Home',
                  onTap: () => print('Home'),
                ),
                _Categories(
                  text: 'TV Shows',
                  onTap: () => print('TV Shows'),
                ),
                _Categories(
                  text: 'Movies',
                  onTap: () => print('Movies'),
                ),
                _Categories(
                  text: 'My List',
                  onTap: () => print('My List'),
                ),
                _Categories(
                  text: 'Latest',
                  onTap: () => print('TV Shows'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.search,
                  ),
                  color: Colors.white,
                  iconSize: 28,
                  onPressed: () => print('Search'),
                ),
                _Categories(
                  text: 'KIDS',
                  onTap: () => print('KIDS'),
                ),
                _Categories(
                  text: 'DVD',
                  onTap: () => print('DVD'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.card_giftcard),
                  color: Colors.white,
                  iconSize: 28,
                  onPressed: () => print('GiftCard'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.notifications,
                  ),
                  color: Colors.white,
                  iconSize: 28,
                  onPressed: () => print('Notification'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  final String text;
  final Function onTap;

  const _Categories({
    Key key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
