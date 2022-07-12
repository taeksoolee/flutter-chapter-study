class Value {
  final String id;
  final String name;

  Value({
    required this.id,
    required this.name,
  });

  @override
  String toString() {
    return '$id : $name';
  }
}