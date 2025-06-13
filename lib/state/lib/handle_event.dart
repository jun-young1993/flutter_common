import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';

Future<void> handleEvent<S, T>(
  Emitter<S> emit,
  S state,
  Future<T> Function() action, {
  AppException? defaultError,
}) async {
  emit((state as dynamic).copyWith(isLoading: true));
  try {
    await action();
  } on AppException catch (e) {
    print('🔥 [ERROR] AppException: $e');
    emit((state as dynamic).copyWith(error: e));
  } catch (e) {
    print('🔥 [ERROR] Unknown error: $e');
    emit((state as dynamic)
        .copyWith(error: defaultError ?? AppException.unknown(e.toString())));
  } finally {
    emit((state as dynamic).copyWith(isLoading: false));
  }
}
