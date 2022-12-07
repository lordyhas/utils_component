part of '../../utils_component.dart';


abstract class Dimens {
  static const double minDimens = 420.0;
  static const double tabDimens = 720.0;
  static const double deskDimens = 1028.0;

  static const phoneDimens = 620.0;
  static const phone2Dimens = 720.0;
  static const double mediumDimens = 720.0;
  static const double medium2Dimens = 1028.0;

  static const double zero = 0;
  static const double pt2 = 2;
  static const double pt3 = 3;
  static const double pt4 = 4;
  static const double pt5 = 5;
  static const double pt6 = 6;
  static const double pt8 = 8;
  static const double pt10 = 10;
  static const double pt12 = 12;
  static const double pt14 = 14;
  static const double pt16 = 16;
  static const double pt18 = 18;
  static const double pt20 = 20;
  static const double pt24 = 24;
  static const double pt36 = 36;
  static const double pt40 = 40;
  static const double pt48 = 48;
  static const double pt50 = 50;
  static const double pt64 = 64;
  static const double pt100 = 100;
  static const double pt120 = 120;
}

abstract class TextDimens {
  static const double pt6 = 6;
  static const double pt8 = 8;
  static const double pt10 = 10;
  static const double pt12 = 12;
  static const double pt13 = 13;
  static const double pt14 = 14;
  static const double pt15 = 15;
  static const double pt16 = 16;
  static const double pt18 = 18;
  static const double pt20 = 20;
  static const double pt24 = 24;
  static const double pt26 = 26;
  static const double pt36 = 36;
}




class Responsive {
  final BuildContext context;
  const Responsive._(this.context);
  static Responsive of(BuildContext context) => Responsive._(context);

  Size get size => MediaQuery.of(context).size;
  bool get isPhone => size.width <= Dimens.phoneDimens || !kIsWeb;
  bool get isWeb => size.width > Dimens.phoneDimens || kIsWeb;
  bool get isWebPlatform => kIsWeb;
  bool get isDesktop => size.width > Dimens.phoneDimens;

}

