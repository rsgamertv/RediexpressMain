import 'package:RediExpress/Authorization/authorization.dart';
import 'package:RediExpress/Authorization/bloc/bloc/authorization_bloc.dart';
import 'package:RediExpress/Boards/on_board_1.dart';
import 'package:RediExpress/Main/main_page.dart';
import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/Models/UserModel/user_model.dart';
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
import 'package:sizer/sizer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_settings.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';

  String ip = '83.147.245.57:8080';
  var email;
  var password;
  AbstractUserModel abstractUserModel = GetIt.I<AbstractUserModel>();
  Future<void> main() async{
  initDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  email = prefs.getString('email');
  password = prefs.getString('password');
  GetIt.I.registerLazySingleton<AbstractUserModel>(() => UserModel(dio: Dio()));
  runApp(
     MyApp(
      preferences: prefs,),
  );
}
void initDependencies(){
  final talker = TalkerFlutter.init();
  GetIt.I.registerSingleton<Talker>(talker);
  final talkerDioLogger = TalkerDioLogger(
    talker: talker
  );
  final dio = Dio();
  dio.interceptors.add(talkerDioLogger);
  talker.info('App Started');
  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: const TalkerBlocLoggerSettings(
      printCreations: true,
      printClosings: true,
      printStateFullData: true,
      printChanges: true,
      printEventFullData: true
    )
  );

}

  class MyApp extends StatefulWidget {
    const MyApp({super.key, required this.preferences});
    final SharedPreferences preferences;

    @override
    State<MyApp> createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
    rememberpass() async{
      final prefs = await SharedPreferences.getInstance();
      email = prefs.getString('email');
    }
    initStateUsing() async{
      final prefs = await SharedPreferences.getInstance();
      abstractUserModel.email = email;
      abstractUserModel.password = password;
      final auth = await abstractUserModel.checkIfExists();
      if(auth == true){
      }
      else if (auth == false){
        prefs.remove('email');
        prefs.remove('password');
        Navigator.of(context).pushNamed('/Authorization');
      }
      
    }
    @override
    void initState() {
      super.initState();
      rememberpass();
      initStateUsing();
      setState(() {});
    }
    @override
    Widget build(BuildContext context) {
      final repo = SettingsRepository(preferences: widget.preferences);
      return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(repository: repo),
        ),
        BlocProvider(
          create: (context) => RegistrationBloc(),
        ),
        BlocProvider(create: 
        (context) => AuthorizationBloc()
        )
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Sizer(builder: (context, orientation, deviceType){
          return MaterialApp(
            home: email == null ? Authorization() : MainPage(),
            theme:
            state.brightness == Brightness.light ? lightTheme : darkTheme,
            debugShowCheckedModeBanner: false,
            routes: routes,
          );
          });
        },
      ),
    );
    }
  }

