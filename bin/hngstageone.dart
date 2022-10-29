void main(List<String> arguments) {
  final circle1 = Circle.circleOne();
  final circle2 = Circle.circleTwo(5);
  final circle3 = Circle.circleThree(3.7, 'blue');
  print({
    'circle 1',
    ' Area : ${circle1.getArea()}',
    'Circumference : ${circle1.getCircumference()}',
    'Description : ${circle1.getDescrption()}',
    'Color : ${circle1.getColor()}',
  });

  print({
    'circle 2',
    ' Area : ${circle2.getArea()}',
    'Circumference : ${circle2.getCircumference()}',
    'Description : ${circle2.getDescrption()}',
    'Color : ${circle2.getColor()}',
  });

  print({
    'circle 3',
    ' Area : ${circle3.getArea()}',
    'Circumference : ${circle3.getCircumference()}',
    'Description : ${circle3.getDescrption()}',
    'Color : ${circle3.getColor()}',
  });
}

class Circle {
  final double? radius;
  final String? color;

  Circle({required this.radius, required this.color});

  Circle.circleOne({
    this.radius = 4,
    this.color = 'red',
  });

  Circle.circleTwo(
    this.radius, {
    this.color = 'red',
  });

  Circle.circleThree(
    this.radius,
    this.color,
  );

  double getArea() {
    return 3.14 * (radius! * 2);
  }

  double getCircumference() {
    return 2 * 3.14 * radius!;
  }

  String getDescrption() {
    return '$radius, $color';
  }

  String? getColor() {
    return color;
  }
}
