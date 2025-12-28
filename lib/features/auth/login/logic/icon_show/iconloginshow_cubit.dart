import 'package:flutter_bloc/flutter_bloc.dart';

class IconloginshowCubit extends Cubit<bool> {
  IconloginshowCubit() : super(true);

  void togglePassword() {
    emit(!state);
  }
}
