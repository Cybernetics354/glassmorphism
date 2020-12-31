part of glassmorphism;

class GlassContainer extends StatelessWidget {
  final GlassContainerDecoration decoration;
  final double blurAmount;
  final Widget child;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  GlassContainer({
    @required this.child,
    this.decoration,
    this.blurAmount = 10.0,
    this.width,
    this.height,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    GlassContainerDecoration _decoration;

    if(decoration == null) {
      _decoration = new GlassContainerDecoration();
    } else {
      _decoration = decoration;
    }

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: decoration.shape == BoxShape.circle ? null : _decoration.borderRadius == null && decoration.shape != BoxShape.circle ? BorderRadius.all(Radius.circular(10.0)) : _decoration.borderRadius,
        shape: _decoration.shape??BoxShape.rectangle,
        boxShadow: _decoration.boxShadow??[
          BoxShadow(
            blurRadius: 10.0,
            spreadRadius: 5.0,
            color: Colors.black.withOpacity(0.1)
          )
        ]
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blurAmount,
          sigmaY: blurAmount
        ),
        child: Container(
          padding: padding,
          width: width,
          height: height,
          decoration: BoxDecoration(
            shape: _decoration.shape??BoxShape.rectangle,
            borderRadius: decoration.shape == BoxShape.circle ? null : _decoration.borderRadius == null && decoration.shape != BoxShape.circle ? BorderRadius.all(Radius.circular(10.0)) : _decoration.borderRadius,
            border: _decoration.border??Border.all(
              color: Colors.white,
              width: 0.5
            ),
            color: _decoration.color??Colors.white.withOpacity(0.3)
          ),
          child: child,
        ),
      ),
    );
  }
}