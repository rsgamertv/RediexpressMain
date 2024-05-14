// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:RediExpress/Boards/on_board_1.dart' as _i9;
import 'package:RediExpress/Boards/on_board_2.dart' as _i10;
import 'package:RediExpress/Boards/on_board_3.dart' as _i11;
import 'package:RediExpress/ChatsPages/chats_page.dart' as _i3;
import 'package:RediExpress/ForgotPassword/forgot_password.dart' as _i4;
import 'package:RediExpress/ForgotPassword/new_password.dart' as _i7;
import 'package:RediExpress/ForgotPassword/otp_password.dart' as _i8;
import 'package:RediExpress/Main/home_page.dart' as _i5;
import 'package:RediExpress/Main/main_page.dart' as _i6;
import 'package:RediExpress/Main/profile_screen.dart' as _i12;
import 'package:RediExpress/Main/track_page.dart' as _i14;
import 'package:RediExpress/Main/wallet_screen.dart' as _i15;
import 'package:RediExpress/Registration/Registration.dart' as _i13;
import 'package:RediExpress/Second/card_page.dart' as _i1;
import 'package:RediExpress/Second/chats_page.dart' as _i2;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    CardRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CardPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    ChatsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChatsPage(),
      );
    },
    ForgotPassword.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ForgotPassword(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.MainPage(),
      );
    },
    NewPasswordSet.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.NewPasswordSet(),
      );
    },
    OTPPassword.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.OTPPassword(),
      );
    },
    OnBoard1.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.OnBoard1(),
      );
    },
    OnBoard2.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.OnBoard2(),
      );
    },
    OnBoard3.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.OnBoard3(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfileScreen(),
      );
    },
    Registration.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.Registration(),
      );
    },
    TrackRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.TrackPage(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CardPage]
class CardRoute extends _i16.PageRouteInfo<void> {
  const CardRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CardRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i16.PageRouteInfo<void> {
  const ChatRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChatsPage]
class ChatsRoute extends _i16.PageRouteInfo<void> {
  const ChatsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ForgotPassword]
class ForgotPassword extends _i16.PageRouteInfo<void> {
  const ForgotPassword({List<_i16.PageRouteInfo>? children})
      : super(
          ForgotPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPassword';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i16.PageRouteInfo<void> {
  const MainRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NewPasswordSet]
class NewPasswordSet extends _i16.PageRouteInfo<void> {
  const NewPasswordSet({List<_i16.PageRouteInfo>? children})
      : super(
          NewPasswordSet.name,
          initialChildren: children,
        );

  static const String name = 'NewPasswordSet';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OTPPassword]
class OTPPassword extends _i16.PageRouteInfo<void> {
  const OTPPassword({List<_i16.PageRouteInfo>? children})
      : super(
          OTPPassword.name,
          initialChildren: children,
        );

  static const String name = 'OTPPassword';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnBoard1]
class OnBoard1 extends _i16.PageRouteInfo<void> {
  const OnBoard1({List<_i16.PageRouteInfo>? children})
      : super(
          OnBoard1.name,
          initialChildren: children,
        );

  static const String name = 'OnBoard1';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OnBoard2]
class OnBoard2 extends _i16.PageRouteInfo<void> {
  const OnBoard2({List<_i16.PageRouteInfo>? children})
      : super(
          OnBoard2.name,
          initialChildren: children,
        );

  static const String name = 'OnBoard2';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnBoard3]
class OnBoard3 extends _i16.PageRouteInfo<void> {
  const OnBoard3({List<_i16.PageRouteInfo>? children})
      : super(
          OnBoard3.name,
          initialChildren: children,
        );

  static const String name = 'OnBoard3';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfileScreen]
class ProfileRoute extends _i16.PageRouteInfo<void> {
  const ProfileRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.Registration]
class Registration extends _i16.PageRouteInfo<void> {
  const Registration({List<_i16.PageRouteInfo>? children})
      : super(
          Registration.name,
          initialChildren: children,
        );

  static const String name = 'Registration';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TrackPage]
class TrackRoute extends _i16.PageRouteInfo<void> {
  const TrackRoute({List<_i16.PageRouteInfo>? children})
      : super(
          TrackRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.WalletScreen]
class WalletRoute extends _i16.PageRouteInfo<void> {
  const WalletRoute({List<_i16.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
