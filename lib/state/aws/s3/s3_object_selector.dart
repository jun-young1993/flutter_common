import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:flutter_common/models/aws/s3/s3_object_like.dart';
import 'package:flutter_common/models/aws/s3/s3_object_surround.dart';
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

class S3ObjectIsUploadingFilesSelector extends S3ObjectSelector<List<File>> {
  S3ObjectIsUploadingFilesSelector(
      Widget Function(List<File> isUploadingFiles) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isUploadingFiles,
          builder: (context, isUploadingFiles) => builder(isUploadingFiles),
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

class S3ObjectObjectsExistenceByMonthSelector
    extends S3ObjectSelector<Map<String, bool>> {
  S3ObjectObjectsExistenceByMonthSelector(
      Widget Function(Map<String, bool> objectsExistenceByMonth) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.objectsExistenceByMonth,
          builder: (context, objectsExistenceByMonth) =>
              builder(objectsExistenceByMonth),
        );
}

class S3ObjectObjectsByDateSelector extends S3ObjectSelector<List<S3Object>> {
  S3ObjectObjectsByDateSelector(
      Widget Function(List<S3Object> objectsByDate) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.objectsByDate,
          builder: (context, objectsByDate) => builder(objectsByDate),
        );
}

class S3ObjectIsObjectsExistenceByMonthLoadingSelector
    extends S3ObjectSelector<bool> {
  S3ObjectIsObjectsExistenceByMonthLoadingSelector(
      Widget Function(bool isObjectsExistenceByMonthLoading) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isObjectsExistenceByMonthLoading,
          builder: (context, isObjectsExistenceByMonthLoading) =>
              builder(isObjectsExistenceByMonthLoading),
        );
}

class S3ObjectIsObjectsByDateLoadingSelector extends S3ObjectSelector<bool> {
  S3ObjectIsObjectsByDateLoadingSelector(
      Widget Function(bool isObjectsByDateLoading) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isObjectsByDateLoading,
          builder: (context, isObjectsByDateLoading) =>
              builder(isObjectsByDateLoading),
        );
}

class S3ObjectLikeSelector extends S3ObjectSelector<S3ObjectLike?> {
  S3ObjectLikeSelector(Widget Function(S3ObjectLike? like) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.like,
          builder: (context, like) => builder(like),
        );
}

class S3ObjectIsDeletingSelector extends S3ObjectSelector<bool> {
  S3ObjectIsDeletingSelector(Widget Function(bool isDeleting) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isDeleting,
          builder: (context, isDeleting) => builder(isDeleting),
        );
}

class S3ObjectIsS3ObjectSurroundLoadingSelector extends S3ObjectSelector<bool> {
  S3ObjectIsS3ObjectSurroundLoadingSelector(
      Widget Function(bool isS3ObjectSurroundLoading) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isS3ObjectSurroundLoading,
          builder: (context, isS3ObjectSurroundLoading) =>
              builder(isS3ObjectSurroundLoading),
        );
}

class S3ObjectS3ObjectSurroundSelector
    extends S3ObjectSelector<S3ObjectSurround?> {
  S3ObjectS3ObjectSurroundSelector(
      Widget Function(S3ObjectSurround? s3ObjectSurround) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.s3ObjectSurround,
          builder: (context, s3ObjectSurround) => builder(s3ObjectSurround),
        );
}
