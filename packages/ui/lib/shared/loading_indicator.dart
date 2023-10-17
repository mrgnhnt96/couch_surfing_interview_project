import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    this.color,
    this.alignment = Alignment.center,
    super.key,
  });

  final Color? color;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SizedBox(
        height: 20,
        width: 20,
        child: Center(
          child: Theme(
            data: ThemeData(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                    primary: color ?? Theme.of(context).colorScheme.secondary,
                  ),
            ),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
