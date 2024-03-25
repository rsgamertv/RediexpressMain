import 'package:RediExpress/ForgotPassword/NewPasswordSet.dart';

import '../Authorization/Authorization.dart';
import '../Boards/OnBoard1.dart';
import '../Boards/OnBoard2.dart';
import '../Boards/OnBoard3.dart';
import '../ForgotPassword/ForgotPassword.dart';
import '../ForgotPassword/OTPPassword.dart';
import '../Main/MainPage.dart';
import '../Packages/AllPackages.dart';
import '../Packages/PackageInfo.dart';
import '../Packages/PackageInfoBase.dart';
import '../Packages/ReadyPackageInfo.dart';
import '../Registration/Registration.dart';

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
};