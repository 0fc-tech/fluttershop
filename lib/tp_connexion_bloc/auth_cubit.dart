import 'package:bloc/bloc.dart';
import 'package:fluttershop/tp_connexion_bloc/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository repo = AuthRepository();
  AuthCubit() : super(const AuthState.initial());

  void login(String email, String pwd) async {
    emit(AuthState.loading());
    final isAuthorized = await repo.connect(email, pwd);
    if (isAuthorized) {
      emit(AuthState.success());
    } else {
      emit(AuthState.failed("Combo MDP / Email incorrect"));
    }
  }

  void forgottenPwd() {}
}
