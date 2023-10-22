class Currency {
  final String? name;
  final String? rate;
  final num? change;
  final String? date;

  const Currency({
    this.name,
    this.rate,
    this.change,
    this.date,
  });

  @override
  String toString() =>
      'Currency(name: $name, value: $rate, change: $change, date: $date)';

  factory Currency.fromJson(Map<String, Map<String, dynamic>> json) {
    return Currency(
      name: json.keys.first,
      rate: json[json.keys.first]!['value'],
      change: json[json.keys.first]!['change'],
      date: json[json.keys.first]!['date'],
    );
  }
}
