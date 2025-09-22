import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:flutter_common/state/aws/s3/s3_object_bloc.dart';
import 'package:flutter_common/state/aws/s3/s3_object_state.dart';

class S3ObjectSelector<T> extends BlocSelector<S3ObjectBloc, S3ObjectState, T> {
  const S3ObjectSelector({
    Key? key,
    required T Function(S3ObjectState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class S3ObjectsSelector extends S3ObjectSelector<List<S3Object>> {
  S3ObjectsSelector(Widget Function(List<S3Object> s3Objects) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.s3Objects,
          builder: (context, s3Objects) => builder(s3Objects),
        );
}

class S3ObjectIsLoadingSelector extends S3ObjectSelector<bool> {
  S3ObjectIsLoadingSelector(Widget Function(bool isLoading) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.isLoading,
          builder: (context, isLoading) => builder(isLoading),
        );
}

class S3ObjectIsUploadingSelector extends S3ObjectSelector<bool> {
  S3ObjectIsUploadingSelector(Widget Function(bool isUploading) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isUploading,
          builder: (context, isUploading) => builder(isUploading),
        );
}

class S3ObjectErrorSelector extends S3ObjectSelector<AppException?> {
  S3ObjectErrorSelector(Widget Function(AppException? error) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.error,
          builder: (context, error) => builder(error),
        );
}

class S3ObjectFindOneSelector extends S3ObjectSelector<S3Object?> {
  S3ObjectFindOneSelector(Widget Function(S3Object? s3Object) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.s3Object,
          builder: (context, s3Object) => builder(s3Object),
        );
}

class S3ObjectAllCountSelector extends S3ObjectSelector<int> {
  S3ObjectAllCountSelector(Widget Function(int allCount) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.allCount,
          builder: (context, allCount) => builder(allCount),
        );
}

class S3ObjectIsAllCountLoadingSelector extends S3ObjectSelector<bool> {
  S3ObjectIsAllCountLoadingSelector(
      Widget Function(bool isAllCountLoading) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isAllCountLoading,
          builder: (context, isAllCountLoading) => builder(isAllCountLoading),
        );
}
