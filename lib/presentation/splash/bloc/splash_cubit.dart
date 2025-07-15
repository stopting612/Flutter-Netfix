import 'package:bloc/bloc.dart';
import 'package:test/presentation/splash/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  Future<void> appStarted() async {
    await Future.delayed(const Duration(seconds: 2));

    emit(Unauthenticated());
  }
}
