import 'package:flutter/material.dart';
import 'package:tablekit/armadillo/models/dice_type.dart';
import 'package:tablekit/armadillo/utility/constants.dart';
import 'package:tablekit/armadillo/utility/dice_utils.dart';

class CalculateNotifier extends ChangeNotifier {
  late List<DiceType> _die;
  List<DiceType> get die => _die;

  int _desiredRoll = 10;
  int get desiredRoll => _desiredRoll;

  CalculateNotifier() {
    _die = DiceUtility.calculateDiceForResult(_desiredRoll);
  }

  void increment(int amountToAdd) {
    int expectedTotal = _desiredRoll + amountToAdd;

    if (expectedTotal > maxCardValue) {
      return;
    }

    _desiredRoll += amountToAdd;
    _die = DiceUtility.calculateDiceForResult(_desiredRoll);
    notifyListeners();
  }

  void decrement(int amountToRemove) {
    int expectedTotal = _desiredRoll - amountToRemove;

    if (expectedTotal < minCardValue) {
      return;
    }

    _desiredRoll -= amountToRemove;
    _die = DiceUtility.calculateDiceForResult(_desiredRoll);
    notifyListeners();
  }
}
