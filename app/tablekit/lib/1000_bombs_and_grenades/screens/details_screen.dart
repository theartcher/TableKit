import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tablekit/1000_bombs_and_grenades/models/card_data.dart';
import 'package:tablekit/1000_bombs_and_grenades/utility/constants.dart';
import 'package:tablekit/1000_bombs_and_grenades/widgets/card_view.dart';
import 'package:tablekit/1000_bombs_and_grenades/widgets/info_panel.dart';

class DetailsScreen extends StatelessWidget {
  final String cardId;

  const DetailsScreen({super.key, required this.cardId});

  @override
  Widget build(BuildContext context) {
    CardData? card;
    for (final item in pirateCards) {
      if (item.id == cardId) {
        card = item;
        break;
      }
    }

    if (card == null) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: const SafeArea(
          child: Center(
            child: Text(
              'Card not found',
              style: TextStyle(color: onBackgroundColor, fontSize: 24),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isDesktop = constraints.maxWidth >= 900;

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1180),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(isDesktop ? 24 : 16),
                  child: isDesktop
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: CardView(
                                card: card!,
                                isDesktop: true,
                                onBackPressed: () => context.pop(),
                                showTitle: false,
                              ),
                            ),
                            const SizedBox(width: 28),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: InfoPanel(card: card, isDesktop: true),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CardView(
                              card: card!,
                              isDesktop: false,
                              onBackPressed: () => context.pop(),
                              showTitle: false,
                            ),
                            const SizedBox(height: 20),
                            InfoPanel(card: card, isDesktop: false),
                          ],
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
