import 'dart:async';

mixin DebouncerMixin {
  Timer? _debounce;

  void debounce(void Function() callback,
      {Duration duration = const Duration(milliseconds: 300)}) {
    _debounce?.cancel();
    _debounce = Timer(duration, callback);
  }
}
