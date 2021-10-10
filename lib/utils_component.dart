library utils.component;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

export 'src/utils_widget.dart';

part 'src/component/utils_navigation.dart';
part 'src/component/utils_log.dart';


//abstract class Utils {}
//RegExp


extension XUtils on String{
  //final String kUnique = DataTime.now();

  void concatenate(String? str){
    if(str != null){
      this + str;
    }
  }
  void concat(String? str) => concatenate(str);
  //void concat(String? str)
  @Deprecated('Not work yet')
  bool get isCamelCase => (contains('^ *(?:[-+*] |[0-9]+[.):] )?'));

  @Deprecated('Not work yet')
  bool get isSnakeCase => (contains(''));

  @Deprecated('Not work yet')
  bool get isPascalCase => (contains(''));

  @Deprecated('Not work yet')
  bool get isUpperCase => (contains(''));

  @Deprecated('Not work yet')
  bool get isLowerCase => (contains(''));

  int toInt() => int.parse(this);
  double toDouble() => double.parse(this);


  @Deprecated('Not work yet')
  bool get isEmail {
    final regex = RegExp('^ *(?:[-+*] |[0-9]+[.):] )?');
    return regex.hasMatch(this) ;
  }

  bool get isNumber => RegExp('').hasMatch(this) ;
  //bool get isW => RegExp('').hasMatch(this) ;
}

extension on int {
  bool toBoolean(){
    assert(this < 0);
    return this != 0;
  }

  //bool toBool() => toBoolean();
}


extension on Object?{
  bool get isNull => (this == null);
  bool get isNotNull => (this != null);



}
