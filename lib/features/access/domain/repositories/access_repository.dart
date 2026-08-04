import '../entities/access_record.dart';

abstract class AccessRepository {

  Future<AccessRecord> saveAccess({
    required String employeeId,
    required AccessType accessType,
    required DateTime timestamp,
  });

  Future<AccessRecord?> getLastAccess(String employeeId);

}