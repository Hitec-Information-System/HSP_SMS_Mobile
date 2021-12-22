import 'package:flutter/material.dart';

class NormalDialog extends StatelessWidget {
  const NormalDialog({
    Key? key,
    required this.title,
    required this.message,
    required this.color,
    required this.leadingIcon,
    this.yesTitle,
    this.noTitle,
    this.onYesPressed,
    this.onNoPressed,
  })  : assert(
          yesTitle == null && onYesPressed == null ||
              yesTitle != null && onYesPressed != null,
          noTitle == null && onNoPressed == null ||
              noTitle != null && onNoPressed != null,
        ),
        super(key: key);

  final String title;
  final String message;
  final Color color;
  final IconData leadingIcon;

  final String? yesTitle;
  final String? noTitle;
  final void Function()? onYesPressed;
  final void Function()? onNoPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: SingleChildScrollView(
        child: Container(
          width: 300,
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    leadingIcon,
                    color: Colors.white54,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  message,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              if (yesTitle != null || noTitle != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    if (noTitle != null)
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            onNoPressed!();
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            color.withAlpha(200),
                          )),
                          child: Text(
                            noTitle!,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    const Spacer(),
                    if (yesTitle != null)
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            onYesPressed!();
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Colors.white,
                          )),
                          child: Text(
                            yesTitle!,
                            style: TextStyle(
                              color: color,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
