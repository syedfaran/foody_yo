import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/pages/location_walk_through/location_walk_through.dart';
import 'package:foody_yo/presentation/pages/login_signup/login_signup.dart';
import 'package:foody_yo/presentation/pages/main_page/drawer_item_page/favourite_page/favourite_page.dart';
import 'package:foody_yo/presentation/pages/main_page/drawer_item_page/help_center_page/cancel_order_page.dart';
import 'package:foody_yo/presentation/pages/main_page/drawer_item_page/help_center_page/help_center_page.dart';
import 'package:foody_yo/presentation/pages/main_page/drawer_item_page/order_page/order_page.dart';
import 'package:foody_yo/presentation/pages/main_page/drawer_item_page/voucher_page/voucher_page.dart';
import 'package:foody_yo/presentation/pages/main_page/main_layout.dart';
import 'package:foody_yo/presentation/pages/map_page/map_page.dart';
import 'package:foody_yo/presentation/pages/welcome/welcome_page.dart';

import 'constants/route_string.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case RouteString.initial:
      //return MaterialPageRoute(builder: (context)=>const WelcomePage());
       //return MaterialPageRoute(builder: (context)=>const LoginORSignup());
        return MaterialPageRoute(builder: (context)=>const LocationWalkThrough());

      case RouteString.map:
      // Validation of correct data type
        if (args is bool) {
          return MaterialPageRoute(
            builder: (_) => const MapPage(),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      case RouteString.welcome:
        return MaterialPageRoute(builder: (context)=>const WelcomePage());
      case RouteString.main:
        return MaterialPageRoute(builder: (context)=>const MainLayout());
      case RouteString.loginOrSignUp:
        return MaterialPageRoute(builder: (context)=>const LoginORSignup());
      case RouteString.helpCenter:
        return MaterialPageRoute(builder: (context)=>const HelpCenterPage());
      case RouteString.cancelOrder:
        return MaterialPageRoute(builder: (context)=>const CancelOrderPage());
      case RouteString.orderHistory:
        return MaterialPageRoute(builder: (context)=>const OrderPage());
      case RouteString.voucher:
        return MaterialPageRoute(builder: (context)=>const VoucherPage());
      case RouteString.favourite:
        return MaterialPageRoute(builder: (context)=>const FavouritePage());

      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

// class RouteObservers {
//   static RouteObserver<dynamic> routeObserver = RouteObserver<PageRoute>();
// }
// class RouteAwareWidget extends StatefulWidget {
//   final String name;
//   final Widget? child;
//   const RouteAwareWidget(this.name,{Key? key,required this.child}) : super(key: key);
//
//   @override
//   State<RouteAwareWidget> createState() => RouteAwareWidgetState();
// }
//
// class RouteAwareWidgetState extends State<RouteAwareWidget> with RouteAware {
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     RouteObservers.routeObserver.subscribe(this, ModalRoute.of(context));
//   }
//
//   @override
//   void dispose() {
//     RouteObservers.routeObserver.unsubscribe(this);
//     super.dispose();
//   }
//
//   @override
//   void didPush() {
//     print('didPush ${widget.name}');
//     // App.rootContext = context;
//   }
//
//   @override
//   // Called when the top route has been popped off, and the current route shows up.
//   void didPopNext() {
//     print('didPopNext ${widget.name}');
//     // App.rootContext = context;
//   }
//
//   @override
//   Widget build(BuildContext context) => widget.child!;
// }
//
// class ScreenArguments<T> {
//   final int? tab;
//   final Widget? currentPage;
//   final String? message;
//   final bool? flag;
//   final T? data;
//   final T? secondData;
//
//   ScreenArguments(
//       {this.tab,
//         this.currentPage,
//         this.message,
//         this.data,
//         this.secondData,
//         this.flag});
// }

