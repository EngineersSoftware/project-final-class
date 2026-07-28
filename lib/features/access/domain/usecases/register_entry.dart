import '../entities/access_record.dart';
import '../repositories/access_repository.dart';
import '../../../employee/domain/repositories/employee_repository.dart';

class RegisterEntry {
  final AccessRepository accessRepository;
  final EmployeeRepository employeeRepository;

  RegisterEntry(this.accessRepository, this.employeeRepository);

  Future<AccessRecord> call(String employeeId) async {
    final employee = await employeeRepository.getEmployeeById(employeeId);

    if (!employee.isActive) {
      throw Exception(
        'Acceso denegado: El empleado está ioactivo o suspendido',
      );
    }

    final lastAccess = await accessRepository.getLastAccess(employeeId);
    if (lastAccess != null &&
        lastAccess.type == AccessType.entry &&
        DateTime.now().difference(lastAccess.timestamp).inMinutes < 5) {
      throw Exception(
        'Acceso denegado: Entrada ya registrada hace unos momentos',
      );
    }

    return await accessRepository.saveAccess(
      employeeId: employeeId,
      type: AccessType.entry,
      timestamp: DateTime.now(),
    );
  }
}
