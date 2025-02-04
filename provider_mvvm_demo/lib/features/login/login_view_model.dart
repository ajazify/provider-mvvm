import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier {
  bool _isLoading = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  void click() {
    _isLoading = true;
    notifyListeners();

    Future.delayed(const Duration(seconds: 2), () {
      _isLoading = false;
      notifyListeners();
    });
  }

  void secondClick() {
    _isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    print("UserViewModel Disposed");
  }
}
