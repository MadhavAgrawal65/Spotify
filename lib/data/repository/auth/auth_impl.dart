import 'package:dartz/dartz.dart';
import 'package:spotify/data/datasources/auth/auth_firebase_services.dart';
import 'package:spotify/data/models/auth/createuserReq.dart';
import 'package:spotify/domain/repositary/auth/auth.dart';
import 'package:spotify/presentation/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createuserReq) async {
    return await sl<AuthFirebaseServices>().signup(createuserReq);
  }

}