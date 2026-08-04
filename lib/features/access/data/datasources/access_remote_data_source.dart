import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/access_model.dart';

abstract class AccessRemoteDataSource {
  Future<AccessModel> createAccess(
    String employeeId,
    String type,
    String timestamp,
  );
  Future<AccessModel?> fetchLastAccess(String employeeId);
}

class AccessRemoteDataSourceImpl implements AccessRemoteDataSource {

  final http.Client client;
  AccessRemoteDataSourceImpl({required this.client});
  
  @override
  Future<AccessModel> createAccess(String employeeId, String type, String timestamp) async {
    final response = await client.post(
      Uri.parse('https://api.example.com/api/v1/access'),
      body: jsonEncode({
        'employee_id': employeeId,
        'type': type,
        'timestamp': timestamp,
      }),
    );

    if (response.statusCode == 201) {
      return AccessModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create access record');
    }
  }

  @override
  Future<AccessModel?> fetchLastAccess(String employeeId) async {
    // Peticion GET a la API para obtener el último registro de acceso del empleado
    return null;
  }

}
