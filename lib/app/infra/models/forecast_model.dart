import 'package:take_your_umbrella/app/domain/entities/forecast_entity.dart';

class ForecastModel {
  final String date;
  final String weekday;
  final int max;
  final int min;
  final String description;
  final String condition;

  ForecastModel(
      {required this.date,
      required this.weekday,
      required this.max,
      required this.min,
      required this.description,
      required this.condition});

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'weekday': weekday,
      'max': max,
      'min': min,
      'description': description,
      'condition': condition,
    };
  }

  factory ForecastModel.fromEntity(ForecastEntity entity) {
    return ForecastModel(
        date: entity.date,
        weekday: entity.weekday,
        max: entity.max,
        min: entity.min,
        description: entity.description,
        condition: entity.condition);
  }
  ForecastEntity toEntity() => ForecastEntity(
      date: date,
      weekday: weekday,
      max: max,
      min: min,
      description: description,
      condition: condition);

  factory ForecastModel.fromMap(Map<String, dynamic> map) {
    return ForecastModel(
        date: map['date'],
        weekday: map['weekday'],
        max: map['max'],
        min: map['min'],
        description: map['description'],
        condition: map['condition']);
  }
}
