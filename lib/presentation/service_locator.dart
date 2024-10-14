import 'package:get_it/get_it.dart';
import 'package:spotify/data/datasources/auth/auth_firebase_services.dart';
import 'package:spotify/data/repository/auth/auth_impl.dart';
import 'package:spotify/domain/repositary/auth/auth.dart';
import 'package:spotify/domain/usecase/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initilizeDependencies()async {

sl.registerSingleton<AuthFirebaseServices>(
  AuthFirebaseServiceImpl()
);

sl.registerSingleton<AuthRepository>(
  AuthRepositoryImpl()
);

sl.registerSingleton<SignUpUseCase>(
  SignUpUseCase()
);
}