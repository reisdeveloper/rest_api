class Results {
  int temp;
  String date;
  String description;
  String city;

  Results({
    required this.temp,
    required this.date,
    required this.description,
    required this.city,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      temp: json['temp'],
      date: json['date'],
      description: json['description'],
      city: json['city'],
    );
  }
}
