import 'dart:ui';
import 'package:flutter/material.dart';

/// 어떤 크기에서든 그 틀에 꽉차게 사용할 수 있는 적응형 로딩바
class AdaptiveLoadingBar extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final String? message;
  final Color? backgroundColor;
  final Color? progressColor;
  final double? progressValue;
  final bool showProgress;
  final double? minHeight;
  final LoadingBarType type;
  final EdgeInsetsGeometry? padding;

  const AdaptiveLoadingBar({
    super.key,
    required this.isLoading,
    required this.child,
    this.message,
    this.backgroundColor,
    this.progressColor,
    this.progressValue,
    this.showProgress = true,
    this.type = LoadingBarType.overlay,
    this.padding,
    this.minHeight = 80,
  });

  @override
  Widget build(BuildContext context) {
    if (!isLoading) return child;

    switch (type) {
      case LoadingBarType.overlay:
        return _buildOverlay(context);
      case LoadingBarType.replace:
        return _buildReplace(context);
      case LoadingBarType.inline:
        return _buildInline(context);
      case LoadingBarType.minimal:
        return _buildMinimal(context);
    }
  }

  Widget _buildOverlay(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: AbsorbPointer(
            absorbing: true,
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor ?? Colors.black.withOpacity(0.3),
              ),
              child: Center(
                child: _buildLoadingContent(context),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReplace(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 부모의 높이가 무한대인 경우 안전하게 처리
        final hasBoundedHeight = constraints.maxHeight.isFinite;

        if (!hasBoundedHeight) {
          // 높이가 무한대인 경우 최소 높이로 제한
          return Container(
            width: double.infinity,
            height: 200, // 최소 높이 설정
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
            ),
            child: Center(
              child: _buildLoadingContent(context),
            ),
          );
        }

        // 높이가 제한된 경우 정상적으로 처리
        return Container(
          width: double.infinity,
          height: constraints.maxHeight,
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
          ),
          child: Center(
            child: _buildLoadingContent(context),
          ),
        );
      },
    );
  }

  Widget _buildInline(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 부모의 높이가 무한대인 경우 안전하게 처리
        final hasBoundedHeight = constraints.maxHeight.isFinite;

        if (!hasBoundedHeight) {
          // 높이가 무한대인 경우 Stack으로 처리
          return Stack(
            children: [
              child,
              if (isLoading)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    padding: padding ?? const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: backgroundColor ?? Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, -2),
                        ),
                      ],
                    ),
                    child: _buildLoadingContent(context),
                  ),
                ),
            ],
          );
        }

        // 높이가 제한된 경우 Column 사용
        return SizedBox(
          width: double.infinity,
          height: constraints.maxHeight,
          child: Column(
            children: [
              Expanded(child: child),
              if (isLoading)
                Container(
                  width: double.infinity,
                  padding: padding ?? const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: backgroundColor ?? Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: _buildLoadingContent(context),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMinimal(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 4,
              child: LinearProgressIndicator(
                value: progressValue,
                backgroundColor: Colors.grey.withOpacity(0.3),
                valueColor: AlwaysStoppedAnimation<Color>(
                  progressColor ?? Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildLoadingContent(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = progressColor ?? theme.primaryColor;
    final textColor = backgroundColor?.computeLuminance() != null &&
            backgroundColor!.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;

    // 화면 크기에 따라 반응형으로 조정
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // 최대 너비를 화면 너비의 90%로 제한하되, 최소 200, 최대 400
    final maxWidth = (screenWidth * 0.9).clamp(200.0, 400.0);
    final minWidth = (screenWidth * 0.6).clamp(150.0, 250.0);

    // 아이콘 크기도 화면 크기에 따라 조정
    final iconSize = (screenWidth * 0.12).clamp(32.0, 64.0);

    // 패딩도 화면 크기에 따라 조정
    final horizontalPadding = (screenWidth * 0.05).clamp(16.0, 32.0);
    final verticalPadding = (screenHeight * 0.03).clamp(20.0, 40.0);

    return IntrinsicHeight(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
          minWidth: minWidth,
          minHeight: minHeight ?? 80, // 최소 높이 추가
        ),
        child: Material(
          color: backgroundColor ?? Colors.white.withOpacity(0.92),
          borderRadius: BorderRadius.circular(20),
          elevation: 8,
          child: Padding(
            padding: padding ??
                EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showProgress) ...[
                  Icon(
                    Icons.hourglass_top_rounded,
                    color: primaryColor,
                    size: iconSize,
                  ),
                  SizedBox(height: iconSize * 0.4),
                  if (progressValue != null)
                    SizedBox(
                      width: (maxWidth * 0.6).clamp(150.0, 250.0),
                      child: LinearProgressIndicator(
                        value: progressValue,
                        backgroundColor: primaryColor.withOpacity(0.3),
                        valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                      ),
                    )
                  else
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                      strokeWidth: 5,
                    ),
                  SizedBox(height: iconSize * 0.4),
                ],
                if (message != null) ...[
                  Text(
                    message!,
                    style: TextStyle(
                      color: textColor,
                      fontSize: (screenWidth * 0.04).clamp(14.0, 18.0),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 로딩바 타입 열거형
enum LoadingBarType {
  overlay, // 오버레이 방식 (기본)
  replace, // 전체 교체 방식
  inline, // 하단 인라인 방식
  minimal, // 최소한의 상단 바
}

/// 간단한 사용을 위한 팩토리 위젯들
class SimpleLoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final String? message;

  const SimpleLoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLoadingBar(
      isLoading: isLoading,
      child: child,
      message: message,
      type: LoadingBarType.overlay,
    );
  }
}

class SimpleLoadingReplace extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final String? message;

  const SimpleLoadingReplace({
    super.key,
    required this.isLoading,
    required this.child,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLoadingBar(
      isLoading: isLoading,
      child: child,
      message: message,
      type: LoadingBarType.replace,
    );
  }
}

class SimpleLoadingInline extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final String? message;

  const SimpleLoadingInline({
    super.key,
    required this.isLoading,
    required this.child,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLoadingBar(
      isLoading: isLoading,
      child: child,
      message: message,
      type: LoadingBarType.inline,
    );
  }
}

class SimpleLoadingMinimal extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final double? progressValue;

  const SimpleLoadingMinimal({
    super.key,
    required this.isLoading,
    required this.child,
    this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLoadingBar(
      isLoading: isLoading,
      child: child,
      type: LoadingBarType.minimal,
      progressValue: progressValue,
    );
  }
}
