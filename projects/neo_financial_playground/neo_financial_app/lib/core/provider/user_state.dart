import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/route_constants.dart';
import 'package:neo_financial_app/core/data/local/shared_preferences.dart';
import 'package:neo_financial_app/core/data/models/user.dart';
import 'package:neo_financial_app/core/data/services/service.dart';

class UserState with ChangeNotifier {
  String _email = '',
      _password = '',
      _phone = '',
      _promoCode = '',
      _passwordStatus = '';
  bool _emailStatus = false;
  bool _isHidden = true;
  Color _firstBar = Colors.grey,
      _secondBar = Colors.grey,
      _thirdBar = Colors.grey;
  User? _user;

  final String _passwordPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!.,/"}{:;@#\$&*~]).{10,}$';
  final String _emailPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  User? get user => _user;
  String get email => _email;
  String get password => _password;
  String get phone => _phone;
  String get promoCode => _promoCode;
  String get passwordStatus => _passwordStatus;
  Color get firstBar => _firstBar;
  Color get secondBar => _secondBar;
  Color get thirdBar => _thirdBar;
  bool get emailStatus => _emailStatus;
  bool get isHidden => _isHidden;

  setUser() async {
    _user = await UserRetrofit().getUser(UserSharedPreferences.getUserID()!);
    notifyListeners();
  }

  setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  setPhone(String phone) {
    _phone = phone;
    notifyListeners();
  }

  setPromoCode(String promoCode) {
    _promoCode = promoCode;
    notifyListeners();
  }

  setIsHidden(bool isHidden) {
    _isHidden = isHidden;
    notifyListeners();
  }

  controlEmail() {
    email.isNotEmpty && !RegExp(_emailPattern).hasMatch(email)
        ? _emailStatus = true
        : _emailStatus = false;
  }

  controlPassword() {
    if (_password.isEmpty || _password.length < 10) {
      _firstBar = Colors.yellow;
      _secondBar = Colors.grey;
      _thirdBar = Colors.grey;
      _passwordStatus = 'Weak';
    } else if (RegExp(_passwordPattern).hasMatch(_password)) {
      if (_password.length > 13) {
        _firstBar = Colors.green;
        _secondBar = Colors.green;
        _thirdBar = Colors.green;
        _passwordStatus = 'Strong';
      } else {
        _firstBar = Colors.green;
        _secondBar = Colors.green;
        _thirdBar = Colors.grey;
        _passwordStatus = 'Middle';
      }
    }
  }

  clearAll() {
    _email = '';
    _password = '';
    _phone = '';
    _promoCode = '';
    _passwordStatus = '';
    _firstBar = Colors.grey;
    _secondBar = Colors.grey;
    _thirdBar = Colors.grey;
    _passwordStatus = '';
  }

  signUp() async {
    final now = DateTime.now();
    await UserRetrofit()
        .register(
            user: User(
      id: "",
      email: _email,
      password: _password,
      phone: _phone,
      name: "",
      surname: "",
      address: "",
      avatar: "",
      promoCode: [],
      cashBudget: 0,
      recentPayments: [],
      monthlyOutgoings: [
        MonthlyOutgoing(
            monthIndex: now.month - 1,
            outgoingAvg: 0,
            cashbackPerent: 0,
            totalSpending: 0,
            cashbackTotal: 0,
            outgoings: [])
      ],
      cards: [],
      favorites: [],
    ))
        .then((user) {
      UserSharedPreferences.setUserID(user!.id!);
      setUser();
    });
    notifyListeners();
  }

  signIn(BuildContext context) async {
    await UserRetrofit().login(email: email, password: password).then((user) {
      UserSharedPreferences.setUserID(user!.id!).then((value) => setUser());

      Navigator.pushNamed(
        context,
        RouteConstants.homeRoute,
      );
    });
    notifyListeners();
  }
}
