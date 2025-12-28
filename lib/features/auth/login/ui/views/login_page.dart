import 'package:e_commerce/features/auth/login/data/repo_impel/login_implement.dart';
import 'package:e_commerce/features/auth/login/logic/auth_login/auth_login_cubit.dart';
import 'package:e_commerce/features/auth/login/logic/icon_show/iconloginshow_cubit.dart';
import 'package:e_commerce/features/auth/login/ui/widgets/ui_body_login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => IconloginshowCubit()),
        BlocProvider(create: (context) => AuthLoginCubit(LoginImplement())),
      ],
      child: const Scaffold(body: UiBodyLoginView()),
    );
  }
}
