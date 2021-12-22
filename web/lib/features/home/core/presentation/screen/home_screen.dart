import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/widgets/popup_menu_widget.dart';
import 'package:web/features/auth/shared/provider.dart';
import 'package:web/features/home/core/presentation/page/home_page.dart';
import 'package:web/features/home/core/presentation/widget/user_popup_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late AppPopupMenu userPopup;

  @override
  void initState() {
    super.initState();
    userPopup = UserConfigPopupWidget(
      onStateSelected: (state) {
        state.maybeWhen(
          orElse: () {
            ref.read(authStateNotifierProvider.notifier).signOut();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          userPopup,
        ],
      ),
      body: const HomePage(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Column(
  //       children: [
  //         GestureDetector(
  //           onTap: () {
  //             Navigator.of(context).push(
  //               PageRouteBuilder(
  //                 pageBuilder: (context, animation, secondaryAnimation) =>
  //                     const DropdownList(),
  //                 transitionsBuilder:
  //                     (context, animation, secondaryAnimation, child) =>
  //                         FadeTransition(opacity: animation, child: child),
  //                 transitionDuration: const Duration(milliseconds: 300),
  //                 opaque: false,
  //               ),
  //             );
  //           },
  //           child: Container(
  //             alignment: Alignment.topRight,
  //             child: const CircleAvatar(
  //               radius: 18,
  //               child: Icon(
  //                 Icons.person,
  //               ),
  //             ),
  //           ),
  //         ),
  //         const HomePage(),
  //       ],
  //     ),
  //   );
}
