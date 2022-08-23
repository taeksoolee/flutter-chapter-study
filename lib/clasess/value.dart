class Value {
  final String id;
  final String name;

  Value({
    this.id,
    this.name,
  });

  @override
  String toString() {
    return '$id : $name';
  }
}