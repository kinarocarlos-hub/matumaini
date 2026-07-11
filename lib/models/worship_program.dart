import 'package:equatable/equatable.dart';

class WorshipProgram extends Equatable {
  final int id;
  final String title;
  final int? date;
  final String? churchName;
  final String? serviceType;
  final String? notes;
  final int createdAt;
  final int updatedAt;
  final bool isTemplate;

  const WorshipProgram({
    required this.id,
    required this.title,
    this.date,
    this.churchName,
    this.serviceType,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
    this.isTemplate = false,
  });

  @override
  List<Object?> get props => [
    id, title, date, churchName, serviceType, notes, createdAt, updatedAt, isTemplate,
  ];
}
