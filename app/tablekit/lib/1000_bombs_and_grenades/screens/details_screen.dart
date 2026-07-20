import 'package:flutter/widgets.dart';

class DetailsScreen extends StatelessWidget {
  final String cardId;

  const DetailsScreen({super.key, required this.cardId});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Details Screen for card ID: $cardId'));
  }
}
