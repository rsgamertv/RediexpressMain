import 'package:RediExpress/Boards/on_board_3.dart';
import 'package:RediExpress/ForgotPassword/new_password.dart';
import 'package:RediExpress/Second/card_page.dart';

import '../Authorization/authorization.dart';
import '../Boards/on_board_1.dart';
import '../Boards/on_board_2.dart';
import '../ForgotPassword/forgot_password.dart';
import '../ForgotPassword/otp_password.dart';
import '../Main/main_page.dart';
import '../Packages/all_packages.dart';
import '../Packages/package_info.dart';
import '../Packages/package_info_base.dart';
import '../Packages/ready_package_info.dart';
import '../Registration/registration.dart';

final routes = {
        '/OnBoard1': (context) => OnBoard1(),
        '/OnBoard2': (context) => OnBoard2(),
        '/OnBoard3': (context) => OnBoard3(),
        '/Registration': (context) => Registration(),
        '/Authorization': (context) => Authorization(),
        '/ForgotPassword': (context) => ForgotPassword(),
        '/MainPage': (context) => MainPage(),
        '/NewPassword':(context) => NewPasswordSet(),
        '/OtpPassword': (context) => OTPPassword(),
        '/AllPackages': (context) => AllPackages(),
        '/PackageInfoBase': (context) => PackageInfoBase(),
        '/PackageInfo': (context) => PackageInfo(),
        '/ReadyPackageInfo': (context) => ReadyPackageInfo(null),
        '/CardsPage':(context) => CardPage()
};