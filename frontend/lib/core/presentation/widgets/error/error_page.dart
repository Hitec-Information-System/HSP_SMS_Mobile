import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error,
              size: 80,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(
              height: LayoutConstants.spaceL,
            ),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
