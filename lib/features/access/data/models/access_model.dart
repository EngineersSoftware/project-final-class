import '../../domain/entities/access_record.dart';

class AccessModel extends AccessRecord {

  const AccessModel({
    required super.id,
    required super.employeeId,
    required super.timestamp,
    required super.type,
  });

  factory AccessModel.fromJson(Map<String, dynamic> json){
    return AccessModel(
      id: json['id'],
      employeeId: json['employee_id'],
      timestamp: DateTime.parse(json['timestamp']),
      type: json['type'] == 'entry' ? AccessType.entry : AccessType.exit,
    );
  }

}