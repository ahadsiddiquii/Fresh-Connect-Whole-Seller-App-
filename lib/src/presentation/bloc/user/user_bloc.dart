import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<CheckIfLoggedIn>((event, emit) async {
      const totalDuration = 7500;
      emit(ShowSplashScreen());

      print('trying prefs');

      try {
        final prefs = await SharedPreferences.getInstance();
        if (!prefs.containsKey('user')) {
          await Future.delayed(const Duration(milliseconds: totalDuration));
          print('pref key not found');
          // emit(UserInitial());
        } else {
          // print('pref key found');
          // final userId = prefs.getString("user");
          // print(userId);
          // final user = await _repository.getUser(userId!);

          // final endDate = DateTime.now();
          // final diff = endDate.difference(initialDate).inMilliseconds;
          // print('Difference: $diff');
          // if (diff < totalDuration) {
          //   await Future.delayed(Duration(milliseconds: totalDuration - diff));
          // }
          // emit UserLoggedIn(user: user);
          // emit(UserLoggedIn(user: user));
        }
      } catch (e) {
        print('Error');
        print(e.toString());

        emit(UserInitial());
      }

      // Edit Account
    });
  }
}
