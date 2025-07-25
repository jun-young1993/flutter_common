import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';

class NoticeCreateScreen extends StatefulWidget {
  final Function(String title, String content, String type) onSubmit;
  const NoticeCreateScreen({super.key, required this.onSubmit});

  @override
  State<NoticeCreateScreen> createState() => _NoticeCreateScreenState();
}

class _NoticeCreateScreenState extends State<NoticeCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('공지사항 작성'),
        ),
        body: NoticeCreateSection(
          onSubmit: widget.onSubmit,
        ));
  }
}

class NoticeCreateSection extends StatefulWidget {
  final Function(String title, String content, String type) onSubmit;

  const NoticeCreateSection({
    super.key,
    required this.onSubmit,
  });

  @override
  State<NoticeCreateSection> createState() => _NoticeCreateSectionState();
}

class _NoticeCreateSectionState extends State<NoticeCreateSection> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _selectedType = 'NORMAL';

  final _noticeTypes = [
    {'value': 'NOTICE', 'label': Tr.notice.notice.tr()},
    {'value': 'NORMAL', 'label': Tr.notice.normal.tr()},
  ];

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 제목 입력
            Text(
              '제목',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _titleController,
              style: const TextStyle(fontSize: 16),
              decoration: InputDecoration(
                hintText: Tr.notice.noticeCreateTitle.tr(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: theme.colorScheme.surface,
                contentPadding: const EdgeInsets.all(16),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return Tr.notice.noticeCreateTitle.tr();
                }
                return null;
              },
            ),

            const SizedBox(height: 8),

            // 내용 입력 (Expanded 사용)
            Text(
              Tr.notice.noticeCreateContent.tr(),
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildNoticeTypeDropdown(),
            const SizedBox(height: 8),
            Expanded(
              child: TextFormField(
                controller: _contentController,
                style: const TextStyle(fontSize: 16, height: 1.6),
                decoration: InputDecoration(
                  hintText: Tr.notice.contentDescription.tr(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  contentPadding: const EdgeInsets.all(16),
                  alignLabelWithHint: true,
                ),
                maxLines: null, // 무제한 라인
                expands: true, // 높이 채우기
                textAlignVertical: TextAlignVertical.top,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return Tr.notice.noticeCreateContent.tr();
                  }
                  return null;
                },
              ),
            ),
            // 등록 버튼
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: FilledButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    widget.onSubmit(
                      _titleController.text,
                      _contentController.text,
                      _selectedType,
                    );
                  }
                },
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  Tr.notice.register.tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoticeTypeDropdown() {
    return DropdownButtonFormField<String>(
      value: _selectedType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      items: _noticeTypes.map((type) {
        return DropdownMenuItem(
          value: type['value'],
          child: Text(type['label']!),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedType = value!;
        });
      },
    );
  }
}
