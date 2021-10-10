part of utils.component;


class Log {

  static void info(String message){
    debugPrint('# $message ###');
  }

  static void i(String message) => debugPrint(message);

  static void out(String tag, String message){
    debugPrint('# $tag : $message');
  }

  static void warning(String message) => debugPrint('WARNING => ' +message);


  static void error(Exception e, String message){
    debugPrint('#ERROR ${e.toString()} : $message');
  }

  static void e(Exception e, String message) => error(e, message);
  static void err(Exception e, String message) => error(e, message);


 // stati e

}