import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:tablekit/1000_bombs_and_grenades/utility/constants.dart';
import 'package:tablekit/1000_bombs_and_grenades/widgets/card_tile.dart';
import 'package:tablekit/main/utility/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: pirateCards.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return CardTile(
              card: pirateCards[index],
              onTap: () =>
                  context.push('$ROUTE_TBAG/details/${pirateCards[index].id}'),
            );
          },
        ),
      ),
    );
  }
}
