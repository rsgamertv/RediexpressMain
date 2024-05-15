

// import 'package:RediExpress/Boards/on_board_3.dart';
// import 'package:RediExpress/ChatsPages/chats_page.dart';
// import 'package:RediExpress/ForgotPassword/new_password.dart';
// import 'package:RediExpress/Main/home_page.dart';
// import 'package:RediExpress/Main/track_page.dart';
// import 'package:RediExpress/Packages/packageinfo_map.dart';
// import 'package:RediExpress/Second/card_page.dart';
// import 'package:RediExpress/Second/chats_page.dart';

// import '../Authorization/authorization.dart';
// import '../Boards/on_board_1.dart';
// import '../Boards/on_board_2.dart';
// import '../ForgotPassword/forgot_password.dart';
// import '../ForgotPassword/otp_password.dart';
// import '../Main/main_page.dart';
// import '../Packages/package_info.dart';
// import '../Packages/package_info_base.dart';
// import '../Packages/ready_package_info.dart';
// import '../Registration/registration.dart';

// final routes = {
//         '/OnBoard1': (context) => OnBoard1(),
//         '/OnBoard2': (context) => OnBoard2(),
//         '/OnBoard3': (context) => OnBoard3(),
//         '/Registration': (context) => Registration(),
//         '/Authorization': (context) => Authorization(),
//         '/ForgotPassword': (context) => ForgotPassword(),
//         '/MainPage': (context) => MainPage(),
//         '/NewPassword':(context) => NewPasswordSet(),
//         '/OtpPassword': (context) => OTPPassword(),
//         '/PackageInfoBase': (context) => PackageInfoBase(),
//         '/PackageInfo': (context) => PackageInfo(),
//         '/ReadyPackageInfo': (context) => ReadyPackageInfo(null),
//         '/CardsPage':(context) => CardPage(),
//         '/ChatsPage':(context) => ChatsPage(),
//         '/PackageInfoMap':(context) => PackageInfoMap(),
//         '/AllPackages':(context) => TrackPage()
// };
import 'package:RediExpress/Main/main_page.dart';
import 'package:auto_route/auto_route.dart';


import 'package:RediExpress/core/routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    /// routes go here
  ];
}