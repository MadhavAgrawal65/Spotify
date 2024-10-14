import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/createuserReq.dart';

abstract class AuthFirebaseServices{

  Future<Either> signup(CreateUserReq createuserReq);


  Future<void> signin();
}

class AuthFirebaseServiceImpl extends AuthFirebaseServices{
  @override
  Future<void> signin() {
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createuserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createuserReq.email, 
        password: createuserReq.password
        );
        return Right('Sign up was succesfull');
    } on FirebaseAuthException catch(e) {
      String message = '';

      if(e.code == 'weak-password'){
        message = 'The password is weak';
      }
      else if(e.code == 'email-alreadi-in-use'){
        message = 'Account already in use';
      }
      return Left(message);
    }
  }

}