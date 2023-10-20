import 'dart:ui';

class NavigationTile {
  NavigationTile(this.title,{required this.onPressed,required this.iconURL});
  final String title;
  final VoidCallback onPressed;
  final String iconURL;
}