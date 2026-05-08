import 'package:flutter_application_1/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_application_1/features/auth/domin/entities/user.dart';
import 'package:flutter_application_1/features/auth/domin/repositories/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
    final SharedPreferences sharedPreferences;

  AuthRepositoryImpl(this.remoteDataSource,this.sharedPreferences);

  @override
  Future<User> login(String email, String password) async {
    final userLogin = await remoteDataSource.login(email, password);
    return userLogin.toEntity();
  }

  @override
  Future<User> signUp(String name, String email, String password)async {
  final userSign = await remoteDataSource.signUp(name,email, password);
    return userSign.toEntity(); 
     }

  @override
  Future<String> forgotPassword(String email)async {
  return await remoteDataSource.forgotPassword(email );
      }
  

  @override
  Future<bool> resetPassword (String email, String newPassword)async  {
  return await remoteDataSource.resetPassword(email,newPassword );
    
      }
  

  @override
  Future<bool> verifyResetCode(String code)async {
return await remoteDataSource.verifyResetCode(code );  }

  @override
  Future<void> logout() async{
       await sharedPreferences.remove('token');
  }
}
