/// Utility functions for working with Kontroll
class Utils {
  /// Converts a hex color to a tuple of (r, g, b)
  static (int, int, int) hexToRgb(String hex) {
    final cleanHex = hex.startsWith('#') ? hex.substring(1) : hex;
    
    final r = int.parse(cleanHex.substring(0, 2), radix: 16);
    final g = int.parse(cleanHex.substring(2, 4), radix: 16);
    final b = int.parse(cleanHex.substring(4, 6), radix: 16);
    
    return (r, g, b);
  }
  
  /// Converts a position on the Voyager to the corresponding key index
  static int posToVoyager(int x, int y) {
    final voyagerLayout = [
      [ 0,  1,  2,  3,  4,  5,        26, 27, 28, 29, 30, 31],
      [ 6,  7,  8,  9, 10, 11,        32, 33, 34, 35, 36, 37],
      [12, 13, 14, 15, 16, 17,        38, 39, 40, 41, 42, 43],
      [18, 19, 20, 21, 22, 23,        44, 45, 46, 47, 48, 49],
      [60, 60, 60, 60, 24, 25,        50, 51, 60, 60, 60, 60]
    ];
    return voyagerLayout[y][x];
  }
}