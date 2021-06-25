import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;

  const AnimatedToggle(
      {Key? key, required this.values, required this.onToggleCallback})
      : super(key: key);
  @override
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle>
    with SingleTickerProviderStateMixin {
  bool _ignoring = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * .7,
      height: width * .13,
      child: Stack(
        children: [
          IgnorePointer(
            ignoring: _ignoring,
            child: GestureDetector(
                onTap: () async {
                  widget.onToggleCallback(1);
                  // 애니메이션 로딩 되는 동안 터치 무시
                  _ignoreTouchForLoad();
                },
                child: Container(
                  width: width * .7,
                  height: width * .13,
                  decoration: ShapeDecoration(
                      // color: context
                      //     .read<ThemeBloc>()
                      //     .state
                      //     .theme
                      //     .toggleBackgroundColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(width * .1))),
                  child: Row(
                    children: List.generate(
                        widget.values.length,
                        (index) => Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * .1),
                              child: Text(
                                widget.values[index],
                                style: TextStyle(
                                  fontSize: width * .05,
                                  fontWeight: FontWeight.bold,
                                  // color: context
                                  //     .read<ThemeBloc>()
                                  //     .state
                                  //     .theme
                                  //     .backgroundTextColor,
                                ),
                              ),
                            )),
                  ),
                )),
          ),
          AnimatedAlign(
            // alignment: context.read<ThemeBloc>().state.theme.isDark
            //     ? Alignment.centerRight
            //     : Alignment.centerLeft,
            alignment: Alignment.centerRight,
            duration: const Duration(milliseconds: 250),
            curve: Curves.ease,
            child: Container(
              alignment: Alignment.center,
              width: width * .35,
              height: width * .13,
              decoration: ShapeDecoration(
                  // color:
                  //     context.read<ThemeBloc>().state.theme.toggleButtonColor,
                  // shadows: context.read<ThemeBloc>().state.theme.shadow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * .1))),
              child: Text(
                // context.read<ThemeBloc>().state.theme.isDark
                //     ? widget.values[1]
                //     : widget.values[0],
                "",
                style: TextStyle(
                    fontSize: width * .045, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  // 애니메이션 로딩 되는 동안 터치 무시
  Future<void> _ignoreTouchForLoad() async {
    _ignoring = true;
    await Future.delayed(const Duration(milliseconds: 800), () {
      setState(() {
        _ignoring = false;
      });
    });
  }
}
