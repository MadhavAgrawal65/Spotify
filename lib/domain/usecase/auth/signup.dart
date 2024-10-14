import 'package:spotify/core/usecases/usecase.dart';
import 'package:spotify/data/models/auth/createuserReq.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify/domain/repositary/auth/auth.dart';
import 'package:spotify/presentation/service_locator.dart';

class SignUpUseCase implements UseCase<Either,CreateUserReq>{
  @override
  Future<Either> call({CreateUserReq ? params}) {
    return sl<AuthRepository>().signup(params!);
  }

}