import 'package:flutter/material.dart';
import 'package:tablekit/1000_bombs_and_grenades/models/card_data.dart';

class CardTile extends StatelessWidget {
  final CardData card;
  final VoidCallback? onTap;

  const CardTile({super.key, required this.card, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: SizedBox.expand(
          child: Image.asset(
            card.imagePath,
            fit: BoxFit.cover,
            cacheWidth: 300,
            errorBuilder: (context, error, stackTrace) =>
                const Center(child: Text('Image not found')),
          ),
        ),
      ),
    );
  }
}
