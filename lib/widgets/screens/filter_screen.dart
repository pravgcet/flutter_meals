import 'package:flutter/material.dart';
import 'package:flutter_meals/providers/filter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterScreen extends ConsumerWidget {
  FilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilter = ref.watch(filterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Filters'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilter[Filters.glutenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filters.glutenFree, isChecked);
            },
            title: Text('Gluten free'),
            subtitle: Text('Only Gluten free meals'),
            activeColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 32, right: 22),
          ),
          SwitchListTile(
            value: activeFilter[Filters.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filters.lactoseFree, isChecked);
            },
            title: Text('Lactose free'),
            subtitle: Text('Only Lactose free meals'),
            activeColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 32, right: 22),
          ),
          SwitchListTile(
            value: activeFilter[Filters.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filters.vegetarian, isChecked);
            },
            title: Text('Vegetarian'),
            subtitle: Text('Only Vegeterian meals'),
            activeColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 32, right: 22),
          ),
          SwitchListTile(
            value: activeFilter[Filters.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filters.vegan, isChecked);
            },
            title: Text('Vegan'),
            subtitle: Text('Only Vegan meals'),
            activeColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 32, right: 22),
          )
        ],
      ),
    );
  }
}
