import 'package:dio/dio.dart';

class LoginService {
  final Dio dio = Dio();

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await dio.post(
        'http://localhost:3000/api/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      return {
        'sucesso': true,
        'dados': response.data,
      };
    } on DioException catch (e) {
      return {
        'sucesso': false,
        'mensagem': e.response?.data['message'] ?? 'Erro ao fazer login',
      };
    } catch (e) {
      return {
        'sucesso': false,
        'mensagem': 'Erro inesperado ao fazer login',
      };
    }
  }
}