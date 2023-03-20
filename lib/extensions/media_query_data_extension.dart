import 'package:flutter/widgets.dart';

abstract class BreakPoint {
  static const double xs = 0;
  static const double sm = 600;
  static const double md = 905;
  static const double l = 1240;
  static const double xl = 1440;
  static const double xxl = 1920;
}

extension MediaQueryDataExtensions on MediaQueryData {
  bool get isXs => size.width >= BreakPoint.xs && size.width < BreakPoint.sm;

  bool get isSm => size.width >= BreakPoint.sm && size.width < BreakPoint.md;

  bool get isMd => size.width >= BreakPoint.md && size.width < BreakPoint.l;

  bool get isL => size.width >= BreakPoint.l && size.width < BreakPoint.xl;

  bool get isXl => size.width >= BreakPoint.xl && size.width < BreakPoint.xxl;

  bool get isXxl => size.width >= BreakPoint.xxl;

  bool get isXsUp => size.width >= BreakPoint.xs;

  bool get isSmUp => size.width >= BreakPoint.sm;

  bool get isMdUp => size.width >= BreakPoint.md;

  bool get isLUp => size.width >= BreakPoint.l;

  bool get isXlUp => size.width >= BreakPoint.xl;

  bool get isXxlUp => size.width >= BreakPoint.xxl;

  bool get landscape => size.width >= size.height;

  /// Returns values corresponding to screen sizes.
  ///
  /// In case there isn't a 1:1 mapping between values and screen sizes, returns
  /// whatever value is closest to the current screen size. Example:
  ///
  /// if we make a call to `getValueByWidth(xsValue: 'foo', xxlValue: 'bar')` when
  /// the current screen size is `md`, then the returned value will be 'foo'
  T getValueByWidth<T>({
    required T xsValue,
    T? smValue,
    T? mdValue,
    T? lValue,
    T? xlValue,
    T? xxlValue,
  }) {
    final screenSizeBooleans = [isXs, isSm, isMd, isL, isXl, isXxl];

    final currentScreenSizeIndex = screenSizeBooleans.indexWhere(
      (value) => value,
    );

    final subList = [
      xsValue,
      smValue,
      mdValue,
      lValue,
      xlValue,
      xxlValue,
    ].sublist(0, currentScreenSizeIndex + 1);

    return subList.reversed.firstWhere((value) => value != null)!;
  }
}
