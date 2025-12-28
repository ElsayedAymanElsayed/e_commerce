import 'package:e_commerce/core/shared/functions/custom_show_snakbar.dart';
import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:e_commerce/core/shared/widgets/custom_circular_indictator.dart';
import 'package:e_commerce/core/shared/widgets/custom_container_buttom.dart';
import 'package:e_commerce/core/shared/widgets/custom_text_form_field.dart';
import 'package:e_commerce/core/shared/widgets/customtext.dart';
import 'package:e_commerce/core/utils/Validators/validators__login_app.dart';
import 'package:e_commerce/features/auth/login/logic/auth_login/auth_login_cubit.dart';
import 'package:e_commerce/features/auth/login/logic/icon_show/iconloginshow_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomTextformFieldLoginView extends StatefulWidget {
  const CustomTextformFieldLoginView({super.key});

  @override
  State<CustomTextformFieldLoginView> createState() =>
      _CustomTextformFieldLoginViewState();
}

class _CustomTextformFieldLoginViewState
    extends State<CustomTextformFieldLoginView> {
  final _formKey = GlobalKey<FormState>();
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            onsaved: (value) => email = value,
            validtion: ValidatorsLoginApp.email,
            hint: 'Email',
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.email, color: ColorsApp.kGray),
            ),
          ),
          Gap(29),
          BlocBuilder<IconloginshowCubit, bool>(
            buildWhen: (previous, current) => previous != current,
            builder: (context, state) {
              return CustomTextFormField(
                onsaved: (value) => password = value,
                validtion: ValidatorsLoginApp.password,
                obscureText: state,
                hint: 'Password',
                iconButton: IconButton(
                  onPressed: () {
                    context.read<IconloginshowCubit>().togglePassword();
                  },
                  icon: Icon(
                    state ? Icons.visibility_off : Icons.visibility,
                    color: ColorsApp.kGray,
                  ),
                ),
              );
            },
          ),
          Gap(15),
          Align(
            alignment: Alignment.centerRight,
            child: Customtext(
              text: 'Forgot Your Password?',
              color: ColorsApp.kGray,
              fontweight: FontWeight.w600,
              size: 12,
            ),
          ),
          Gap(30),
          BlocConsumer<AuthLoginCubit, AuthLoginState>(
            listenWhen: (previous, current) => previous != current,
            listener: (context, state) {
              if (state is AuthLoginFailuar) {
                customShowSnakBar(context: context, message: state.errMessage);
              }
              if (state is AuthLoginSuccess) {}
            },
            builder: (context, state) {
              final isloading = state is AuthLoginLoading;
              return CustomContainerButtom(
                backgroundColor: ColorsApp.kbuttomColorblue,
                widget: isloading
                    ? CustomCircularIndictator()
                    : Customtext(text: 'Sign in', fontweight: FontWeight.bold),
                ontap: isloading
                    ? null
                    : () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          context
                              .read<AuthLoginCubit>()
                              .loginUserEmailAndPassword(email!, password!);
                        }
                      },
              );
            },
          ),
        ],
      ),
    );
  }
}
