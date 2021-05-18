import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/settings/theme/theme_bloc.dart';
import 'package:frontend/presentation/settings/theme/widgets/animated_toggle.dart';

class ThemeChangePage extends StatefulWidget {
  @override
  _ThemeChangePageState createState() => _ThemeChangePageState();
}

class _ThemeChangePageState extends State<ThemeChangePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    changeThemeMode(!context.read<ThemeBloc>().state.theme.isDark);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void changeThemeMode(bool isDarkMode) {
    if (isDarkMode) {
      _animationController.reverse(from: 1.0);
    } else {
      _animationController.forward(from: 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: height * 0.1),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: width * 0.35,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors:
                                context.read<ThemeBloc>().state.theme.gradient,
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)),
                  ),
                  Transform.translate(
                    offset: Offset(width * 0.09, height * 0.07),
                    child: ScaleTransition(
                      scale: _animationController.drive(
                        Tween<double>(begin: 0.0, end: 1.1).chain(
                          CurveTween(curve: Curves.decelerate),
                        ),
                      ),
                      alignment: Alignment.topRight,
                      child: Container(
                        width: width * .26,
                        height: width * .26,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.red,

                          color: context
                              .read<ThemeBloc>()
                              .state
                              .theme
                              .themeData
                              .backgroundColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Choose a style',
                style: TextStyle(
                    fontSize: width * .06, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width * .6,
                child: Text(
                  'Pop or subtle. Day and night. Customize your interface.',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              AnimatedToggle(
                values: ['Light', 'Dark'],
                onToggleCallback: (v) {
                  context
                      .read<ThemeBloc>()
                      .add(const ThemeEvent.themeChanged());
                  changeThemeMode(context.read<ThemeBloc>().state.theme.isDark);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
