import 'package:equatable/equatable.dart';

enum AccessType { entry, exit }

class AccessRecord extends Equatable {
  
  final String id;
  final String employeeId;
  final DateTime timestamp;
  final AccessType type;

  const AccessRecord({
    required this.id,
    required this.employeeId,
    required this.timestamp,
    required this.type,
  });

  @override
  List<Object?> get props => [id, employeeId, timestamp, type];

}