import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/constant/constant.dart';
import 'package:web/core/widgets/widgets.dart';
import 'package:web/features/auth/shared/provider.dart';
import 'package:web/features/home/presentation/page/home_page.dart';
import 'package:web/features/home/presentation/widget/widget.dart';

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
            showDialog(
              context: context,
              barrierColor: Colors.black26,
              builder: (context) {
                return NormalDialog(
                  title: kSignoutText,
                  message: signoutDialogText,
                  color: kPrimaryThemeColor,
                  leadingIcon: Icons.save,
                  yesTitle: kYesText,
                  noTitle: kNoText,
                  onYesPressed: () =>
                      ref.read(authStateNotifierProvider.notifier).signOut(),
                  onNoPressed: () {},
                );
              },
            );
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
}
