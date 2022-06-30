import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double intToDouble(int number) {
  return number / 100000000;
}

double multiply(
  int balance,
  double number,
) {
  return (balance / 100000000) * number;
}

String firstAndLast(String text) {
  // show  first 4 charters and last 4 charters
  var result = '';
  if (text.length < 2) {
    result = '';
  } else if (text.length < 5) {
    result = text;
  } else if (text.length > 4) {
    result = text.substring(0, 10) + '...' + text.substring(text.length - 4);
  } else {
    result = result;
  }
  return result;
}

List<double> intToDouble1(List<int> number) {
  // convert each integer to double and divide it for 2
  return List<double>.from(number.map((value) {
    print(value);
    return (value).toDouble() / 100000000;
  }));
}

double multiplyWithoutRules(
  double amount,
  double btcPrice,
) {
  return amount * btcPrice;
}

double convertStringToDouble(String text) {
  // convert text to double and if it didn't contain number return 0
  double price;
  try {
    price = double.parse(text);
  } catch (_) {
    price = 0;
  }
  return price;
}

double sendBitcoinTransaction(
  double amount,
  int networkFee,
) {
  double res = amount - (networkFee / 100000000);
  return num.parse(res.toStringAsFixed(7));
}

double changeAddressAmount(
  double bitcoinBalance,
  double amount,
) {
  //  if bitcoinBalance equal to amount return 0.0000001 or bitcoin balance minus amount rounded for 6
  if (bitcoinBalance == amount) {
    return 0.00000001;
  } else {
    if (bitcoinBalance - amount > 0.000000001) {
      return 0.000001;
    }
    double step1 = bitcoinBalance - amount;
    String step2 = step1.toStringAsFixed(6);
    return double.parse(step2);
  }
}

double sendTransactionConfirmScreenMultiply(
  double amount,
  double bitcoinPrice,
) {
  return amount * bitcoinPrice;
}

int swapCount(int number) {
  return number + 1;
}

int swapCountMinus(int number) {
  return number - 1;
}

double ifItsIntegerConvertToDouble(String number) {
  // if number is integer convert it to double, if number is string or text return it as 0
  try {
    number = number.replaceAll(",", ".");
    return double.parse(number);
  } catch (e) {
    return 1.0;
  }
}

double convertStringtoDouble(String integer) {
  // convert string to double and if it is integer convert to double and if it is text return 1
  double mydouble;
  try {
    mydouble = double.parse(integer);
    return mydouble;
  } on Exception {
    return 1.0;
  }
}

String returnFinished() {
  return 'finished';
}

dynamic splitMnemonicJSON(String mnemonic) {
  // split 12 word and return it as JSON
  List providedWordList = mnemonic.split(' ');
  List<String> wordList = providedWordList.map((e) {
    return e.toString();
  }).toList();
  assert(wordList.length == 12);
  return <String, dynamic>{
    "word1": wordList[0],
    "word2": wordList[1],
    "word3": wordList[2],
    "word4": wordList[3],
    "word5": wordList[4],
    "word6": wordList[5],
    "word7": wordList[6],
    "word8": wordList[7],
    "word9": wordList[8],
    "word10": wordList[9],
    "word11": wordList[10],
    "word12": wordList[11],
  };
}

List<double> multiplyDoubleList(
  List<double> transactionValue,
  double number,
) {
  // multiply transactionValue to number
  if (number.isNaN) {
    return transactionValue;
  }
  return transactionValue.map((element) => element * number).map((element) {
    return element < 0.0 ? 0.0 : element;
  }).toList();
}

bool addressValid(String address) {
  // address must start with 3 or bc1 or 1 if starts with anything else return false
  if (address.length < 15) {
    return false;
  }
  if (address.startsWith('3') ||
      address.startsWith('bc1') ||
      address.startsWith('1')) return true;
  return false;
}

double returnDemicalValue(int number) {
  // return demical value by divide number for 100000000
  return number.toDouble() / 100000000;
}

bool ifAddressEQ(
  String sendTo,
  String activeAddress,
) {
  // if sendTo Equal to activeAddress return false
  if (sendTo == activeAddress) return false;
  return true;
}

bool ifAmountGreatetThan(
  double amount,
  double availableBalance,
) {
  // if amount is greater than availableBalance return false
  if (amount > availableBalance) {
    return false;
  }
  return true;
}

double totalAmountSendBitTra(
  double amount,
  int netFee,
  double price,
) {
  double balance = amount - netFee / 100000000;
  String res = balance.toStringAsFixed(10);
  double step2 = double.parse(res);
  double step3 = step2 * price;
  String step4 = step3.toStringAsFixed(3);
  double step5 = double.parse(step4);
  return step5;
}

double ifemptyReturnOne(
  double amount,
  double price,
) {
  // if amount is equal to empty return emptyAmount multiply for price or amount multiply price
  if (price <= 0.0) {
    return 0.0;
  }
  if (amount <= 0 || amount.isNaN || amount.toString().isEmpty ?? true) {
    return 1.0 * price;
  }
  return amount * price;
}
