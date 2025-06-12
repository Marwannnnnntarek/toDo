import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> handleRegister({
    required String email,
    required String password,
  }) async {
    emit(RegisterLoading());

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        emit(RegisterSuccess());
      } else {
        emit(RegisterFailure('Registration failed. Please try again.'));
      }
    } on FirebaseAuthException catch (e) {
      emit(RegisterFailure(e.message ?? 'Registration failed'));
    } catch (e) {
      emit(RegisterFailure('An unexpected error occurred: ${e.toString()}'));
    }
  }
}
