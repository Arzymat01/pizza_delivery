import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app/blocs/authentication_bloc/authentication_bloc_bloc.dart';
import 'package:pizza_app/screens/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:pizza_app/screens/auth/views/welcome_screen.dart';
import 'package:pizza_app/screens/home/get_Pizza/bloc/get_pizza_bloc.dart';
import 'package:pizza_app/screens/home/views/home_screen.dart';
import 'package:pizza_repository/pizza_repository.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        background: Colors.grey.shade200,
        onBackground: Colors.black,
        primary: Colors.blue,
        onPrimary: Colors.white,
      )),
      home: BlocBuilder<AuthenticationBlocBloc, AuthenticationState>(
        builder: ((context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => SignInBloc(
                      context.read<AuthenticationBlocBloc>().userRepository),
                ),
                BlocProvider(
                  create: (context) => GetPizzaBloc(
                    FirebasePizzaRepo(),
                  )..add(GetPizza()),
                ),
              ],
              child: const HomeSreen(),
            );
          } else {
            return WelcomeScreen();
          }
        }),
      ),
    );
  }
}
