
part of utils.component;

/// A Go Route Navigator.
@Deprecated("use Flutter Navigator instead")
class Go {

  /// Returns [value] plus 1.

  int increment(int value) => value + 1;

  ///
  /*static Future<T?> back<T extends Object?>(BuildContext context, Route<T> route) {
    return Go.of(context).push(route);
  }*/

  //@optionalTypeArgs
  @deprecated
  static void back<T extends Object?>(BuildContext context, [ T? result ]) {
    Go.of(context).pop<T>(result);
  }

  @deprecated
  static Future<T?> to<T extends Object?>({
    required BuildContext context,
    required Widget Function(BuildContext context) builder}
    ) => Go.of(context).push(MaterialPageRoute<T>(
      builder: builder,
  ));

  @deprecated
  toNextPage(BuildContext context,  {required Widget page}){
    Go.to(context: context, builder: (BuildContext context) => page );
  }

  @deprecated
  static NavigatorState of(BuildContext context, {
    bool rootNavigator = false,
  }) => Navigator.of(context, rootNavigator: rootNavigator);

  //var a = Navigator.pop(context);


}
