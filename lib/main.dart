import 'package:RediExpress/Authorization/authorization.dart';
import 'package:RediExpress/Authorization/bloc/bloc/authorization_bloc.dart';
import 'package:RediExpress/Boards/on_board_1.dart';
import 'package:RediExpress/Models/UserModel/AbstractUserModel.dart';
import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:RediExpress/Registration/bloc/registration_bloc.dart';
import 'package:RediExpress/ThemesFolder/theme.dart';
import 'package:RediExpress/ThemesFolder/cubit/theme_cubit.dart';
import 'package:RediExpress/core/routes.dart';
import 'package:RediExpress/repositorires/Settings/settings_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

  Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  GetIt.I.registerLazySingleton<AbstractUserModel>(() => UserModel(dio: Dio()));
  runApp(
     MyApp(preferences: prefs,),
  );
}

  class MyApp extends StatefulWidget {
    const MyApp({super.key, required this.preferences
    
    });
    final SharedPreferences preferences;
  
    @override
    State<MyApp> createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      final repo = SettingsRepository(preferences: widget.preferences);
      return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(repository: repo),
        ),
        BlocProvider(
          create: (context) => RegistrationBloc(GetIt.I<AbstractUserModel>()),
        ),
        BlocProvider(create: 
        (context) => AuthorizationBloc(GetIt.I<AbstractUserModel>())
        )
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme:
            state.brightness == Brightness.light ? lightTheme : darkTheme,
            debugShowCheckedModeBanner: false,
            routes: routes,
            initialRoute: '/MainPage',
          );
        },
      ),
    );
    }
  }

