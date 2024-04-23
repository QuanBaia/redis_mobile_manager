import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListView extends StatelessWidget {
  const LoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: colorScheme.tertiary,
          highlightColor: colorScheme.secondary,
          direction: ShimmerDirection.ltr,
          child: ListTile(
              title: Container(
                height: 10,
                color: colorScheme.tertiary..withOpacity(0.5),
              ),
              subtitle: Container(
                height: 10,
                color: colorScheme.tertiary.withOpacity(0.5),
              ),
              trailing: Container(
                height: 40,
                width: 40,
                color: colorScheme.tertiary.withOpacity(0.5),
              )),
        );
      },
    );
  }
}
