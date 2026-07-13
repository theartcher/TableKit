import 'package:flutter/material.dart';
import 'package:tablekit/main/widgets/game_tile.dart';
import 'package:tablekit/main/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const GameTileData = [
    {
      'title': 'ARMADILLO',
      'textColor': Color(0xFFC27803),
      'containerColor': Color(0xFFE8DCC4),
    },
    {
      'title': '1000 BOMMEN EN GRANATEN',
      'textColor': Color(0xFFFFFFFF),
      'containerColor': Color(0xFF2C578F),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: GameTileData.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final gameData = GameTileData[index];

                    return GameTile(
                      gameData['title'] as String,
                      gameData['textColor'] as Color,
                      gameData['containerColor'] as Color,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
