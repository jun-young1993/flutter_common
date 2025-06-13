import 'package:flutter/material.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/widgets/toast/toast.dart';

class ToastExample extends StatelessWidget {
  const ToastExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Toast.showSuccess(
                  context,
                  message: 'Successfully saved!',
                );
              },
              child: const Text('Show Success Toast'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Toast.showError(
                  context,
                  error: const AppException.unknown('Something went wrong!'),
                );
              },
              child: const Text('Show Error Toast'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Toast.showWarning(
                  context,
                  message: 'Please check your input.',
                );
              },
              child: const Text('Show Warning Toast'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Toast.show(
                  context,
                  message: 'This is an info message.',
                  type: ToastType.info,
                );
              },
              child: const Text('Show Info Toast'),
            ),
          ],
        ),
      ),
    );
  }
}
