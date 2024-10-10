import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/createuserReq.dart';

abstract class AuthFirebaseServices{

  Future<void> signup(CreateUserReq createuserReq);


  Future<void> signin();
}

class AuthFirebaseServiceImpl extends AuthFirebaseServices{
  @override
  Future<void> signin() {
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserReq createuserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createuserReq.email, 
        password: createuserReq.password
        );
    } on FirebaseAuthException catch(e) {
      
    }
  }

}