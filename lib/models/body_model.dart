enum Sex {
  male,
  female,
}

class BodyModel {
  Sex sex;
  int height;
  int weight;
  int age;

  BodyModel({
    required this.sex,
    required this.height,
    required this.weight,
    required this.age,
  });
}
