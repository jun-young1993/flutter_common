```dart
await BottomSelectModal.show<String>(
  context: context,
  title: '옵션 선택',
  items: ['A', 'B', 'C'],
  initialValue: selectedValue,
  labelBuilder: (item) => '옵션 $item',
  leadingBuilder: (ctx, item, isSelected) => Icon(
    Icons.label,
    color: isSelected ? Theme.of(ctx).colorScheme.primary : Colors.grey,
  ),
  trailingBuilder: (ctx, item, isSelected) => Icon(
    Icons.chevron_right,
    color: Colors.grey,
  ),
  actionsBuilder: (ctx, item, isSelected) => [
    TextButton(
      onPressed: () {
        // row 별 액션
      },
      child: const Text('Action'),
    ),
  ],
  onConfirm: (value) {
    // 선택값 처리
  },
);
```