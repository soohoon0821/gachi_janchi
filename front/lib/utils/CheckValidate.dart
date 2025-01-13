import 'package:flutter/material.dart';

class CheckValidate {
  String? validateName(FocusNode focusNode, String? name) {
    String pattern = r'^[^\s](\S*(\s\S+)*)?$';
    RegExp regExp = RegExp(pattern);
    if (name == null || name.isEmpty) {
      focusNode.requestFocus();
      return "이름을 입력하세요.";
    } else if (!regExp.hasMatch(name)) {
      focusNode.requestFocus();
      return "앞/뒤 공백 없이 한 글자 이상 작성하세요.";
    } else {
      return null;
    }
  }
  

  String? validateEmail(FocusNode focusNode, String? email) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (email == null || email.isEmpty) {
      return "이메일을 입력하세요.";
    } else if (!regExp.hasMatch(email)) {
      return "잘못된 이메일 형식입니다.";
    } else {
      return null;
    }
  }

  String? validatePassword(FocusNode focusNode, String? password) {
    String pattern = r'^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$';
    RegExp regExp = RegExp(pattern);
    if (password == null || password.isEmpty) {
      return "비밀번호를 입력하세요.";
    } else if (password.length < 8) {
      return "8자리 이상 입력하세요.";
    } else if (!regExp.hasMatch(password)) {
      return "특수문자, 문자, 숫자 포함 8자 이상 15자 이내로 입력하세요.";
    } else {
      return null;
    }
  }

  String? validateRePassword(FocusNode focusNode, String password, String? rePassword) {
    if (rePassword == null || rePassword.isEmpty) {
      return "비밀번호 확인을 입력하세요.";
    } else if (password != rePassword) {
      return "입력한 비밀번호가 다릅니다.";
    } else {
      return null;
    }
  }
}