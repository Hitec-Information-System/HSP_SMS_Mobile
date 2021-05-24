import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/settings/theme/theme_bloc.dart';
import 'package:frontend/presentation/settings/theme/widgets/animated_toggle.dart';
import 'package:rive/rive.dart';

class ThemeChangePage extends StatefulWidget {
  @override
  _ThemeChangePageState createState() => _ThemeChangePageState();
}

class _ThemeChangePageState extends State<ThemeChangePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final riveFileName = 'assets/animation/theme_mode.riv';

  Artboard? _riveArtboard;
  SMIInput<bool>? _pressInput;
  SMIInput<bool>? _isDarkInput;

  @override
  void initState() {
    super.initState();
    rootBundle.load(riveFileName).then(
      (data) {
        // Load the RiveFile from the binary data.
        final file = RiveFile.import(data);

        // The artboard is the root of the animation and gets drawn in the Rive widget.
        final artboard = file.mainArtboard;
        final controller =
            StateMachineController.fromArtboard(artboard, 'theme_state');
        if (controller != null) {
          artboard.addController(controller);
          _pressInput = controller.findInput('onPressed');
          _isDarkInput = controller.findInput('isDarkMode');

          // 현재 theme 값 할당하기
          _isDarkInput?.value = context.read<ThemeBloc>().state.theme.isDark;
        }

        setState(() => _riveArtboard = artboard);
      },
    );
  }

  @override
  void dispose() {
    _isDarkInput?.controller.dispose();
    _pressInput?.controller.dispose();
    super.dispose();
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
              SizedBox(
                width: width * 0.5,
                height: height * 0.35,
                child: _riveArtboard != null
                    ? Rive(
                        artboard: _riveArtboard!,
                        fit: BoxFit.cover,
                      )
                    : Container(),
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
              SizedBox(
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
                  _pressInput?.value = true;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
