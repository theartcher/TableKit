import 'package:tablekit/armadillo/models/dice_type.dart';

class DiceState {
  final DiceType type;
  bool enabled;

  DiceState({required this.type, this.enabled = true});
}
