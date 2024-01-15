import 'package:equatable/equatable.dart';

class DrawerMenuCategory extends Equatable {
  final int? pk;
  final String? categorySlug;
  final String? categoryIcon;
  final String? categoryName;
  const DrawerMenuCategory({
    this.pk,
    this.categorySlug,
    this.categoryIcon,
    this.categoryName,
  });

  DrawerMenuCategory.fromJson(Map<String, dynamic> json)
      : pk = json['pk'] as int?,
        categorySlug = json['category_slug'] as String?,
        categoryIcon = json['category_icon'] as String?,
        categoryName = json['category_name'] as String?;

  Map<String, dynamic> toJson() => {
    'pk': pk,
    'category_slug': categorySlug,
    'category_icon': categoryIcon,
    'category_name': categoryName,
  };

  @override
  List<Object?> get props => [pk];
}
