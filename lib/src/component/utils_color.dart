import 'dart:ui';
int _colorFromHex(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');
  if (hexColor.length == 6) {
    hexColor = 'FF' + hexColor;
  }
  return int.parse(hexColor, radix: 16);
}

class HexColor extends Color {
  final String hexColor;

  HexColor(this.hexColor) : super(_colorFromHex(hexColor));

  int get integer {
    var hex = hexColor.toUpperCase().replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF' + hexColor;
    }
    return int.parse(hex, radix: 16,);
  }

}

class ColorFromHex extends HexColor{
  ColorFromHex(String hexColor) : super(hexColor);
}
class HtmlColor extends HexColor{
  HtmlColor(String hexColor) : super(hexColor);
}