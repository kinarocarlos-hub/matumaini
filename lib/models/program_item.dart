import 'package:equatable/equatable.dart';

class ProgramItem extends Equatable {
  final int id;
  final int programId;
  final int displayOrder;
  final String itemType;
  final int? hymnId;
  final String? customTitle;
  final String? customContent;
  final int? durationMinutes;
  final String? notes;
  final bool isComplete;

  const ProgramItem({
    required this.id,
    required this.programId,
    required this.displayOrder,
    required this.itemType,
    this.hymnId,
    this.customTitle,
    this.customContent,
    this.durationMinutes,
    this.notes,
    this.isComplete = false,
  });

  @override
  List<Object?> get props => [
    id, programId, displayOrder, itemType, hymnId, customTitle,
    customContent, durationMinutes, notes, isComplete,
  ];
}
