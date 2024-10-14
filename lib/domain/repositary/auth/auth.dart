import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/createuserReq.dart';

abstract class AuthRepository{

  Future<Either> signup(CreateUserReq createuserReq);


  Future<void> signin();


}