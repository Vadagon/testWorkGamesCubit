import 'package:flutter/material.dart';
import 'package:state_management/games/domain/games_filter.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
    required this.filter,
    required this.onChangeCategory,
    required this.onChangeSortBy,
  }) : super(key: key);

  final GamesFilter filter;
  final ValueChanged<GameCategory?> onChangeCategory;
  final ValueChanged<SortBy?> onChangeSortBy;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            CategoryFilter(
              value: filter.category,
              onChanged: onChangeCategory,
            ),
            const Divider(color: Colors.transparent),
            SortByFilter(
              value: filter.sortBy,
              onChanged: onChangeSortBy,
            ),
          ],
        ),
      ),
    );
  }
}

class SortByFilter extends StatelessWidget {
  const SortByFilter({
    Key? key,
    this.value,
    required this.onChanged,
  }) : super(key: key);

  final SortBy? value;
  final ValueChanged<SortBy?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(label: Text('Sort by')),
      items: SortBy.values.map(_buildDropdownMenuItem).toList(),
      onChanged: onChanged,
    );
  }

  DropdownMenuItem<SortBy> _buildDropdownMenuItem(SortBy sortBy) {
    return DropdownMenuItem(
      child: Text(sortBy.kebab),
      value: sortBy,
    );
  }
}

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({
    Key? key,
    this.value,
    required this.onChanged,
  }) : super(key: key);

  final GameCategory? value;
  final ValueChanged<GameCategory?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(label: Text('Category')),
      items: GameCategory.values.map(_buildDropdownMenuItem).toList(),
      onChanged: onChanged,
    );
  }

  DropdownMenuItem<GameCategory> _buildDropdownMenuItem(GameCategory category) {
    return DropdownMenuItem(
      child: Text(category.kebab),
      value: category,
    );
  }
}
