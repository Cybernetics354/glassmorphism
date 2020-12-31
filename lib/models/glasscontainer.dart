part of glassmorphism;

class GlassContainerDecoration {
  /// Container shape, default is [BoxShape.rectangle]
  BoxShape shape;

  /// Container border radius, default is [Radius.circular(10.0)]
  BorderRadiusGeometry borderRadius;
  
  /// Container box shadow
  List<BoxShadow> boxShadow;

  /// Container color, default is [Colors.white]
  Color color = Colors.white;

  /// Container border
  BoxBorder border;

  GlassContainerDecoration({
    this.shape,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.color
  });
}