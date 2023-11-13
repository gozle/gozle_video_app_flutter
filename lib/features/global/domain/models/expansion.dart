class Expansion {
  final double height;
  final double width;

  Expansion({
    this.height = 9,
    this.width = 16,
  });

  Expansion copyWith({
    double? height,
    double? width,
  }) {
    return Expansion(
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  double get aspectRatio => ((width) / (height));

  bool get isVertical => height > width;

  static Expansion fromJson(String? json) {
    final List<String> parts = '$json'.split(':');

    if (parts.length == 2) {
      final double width = double.parse(parts[0]);
      final double height = double.parse(parts[1]);
      return Expansion(height: height, width: width);
    } else {
      return Expansion(height: 9, width: 16);
    }
  }

  Map<String, dynamic> toJson() => {'height': height, 'width': width};
}
