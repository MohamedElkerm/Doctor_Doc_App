
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName) {
    return Navigator.of(this).pushNamed(
      routeName,
    );
  }
  // i need to add the pushReplacementNamed method and the pop method and pushNamedRemovedUtil
  Future<dynamic> pushReplacementNamed(String routeName) {
    return Navigator.of(this).pushReplacementNamed(
      routeName,
    );
  }
  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }
  void pop() {
    return Navigator.of(this).pop();
  }

}