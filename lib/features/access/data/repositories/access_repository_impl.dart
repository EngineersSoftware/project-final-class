import '../../domain/entities/access_record.dart';
import '../../domain/repositories/access_repository.dart';
import '../datasources/access_remote_data_source.dart';
import '../models/access_model.dart';

class AccessRepositoryImpl implements AccessRepository {

  final AccessRemoteDataSource remoteDataSource;

  AccessRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AccessRecord> saveAccess({
    required String employeeId,
    required AccessType accessType,
    required DateTime timestamp,
  }) async {
    try {
      final typeString = type == AccessType.entry ? 'entry' : 'exit';
      final timeString = timestamp.toIso8601String();

      final accessModel = await remoteDataSource.createAccess(employeeId, typeString, timeString);
    
      return accessModel;
    
    } catch (e){
      throw Exception('Fallo al conectar el servidor: $e');
    }
  }

  @override
  Future<AccessRecord?> getLastAccess(String employeeId) async {
    return await remoteDataSource.fetchLastAccess(employeeId);
  }

}