import 'package:spotify/data/models/auth/createuserReq.dart';

abstract class AuthRepository{

  Future<void> signup(CreateUserReq createuserReq);


  Future<void> signin();


}