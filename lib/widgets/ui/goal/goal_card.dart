import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/models/goal/goal.dart';

class GoalCard extends StatelessWidget {
  final Goal goal;
  final VoidCallback onLike;
  final VoidCallback onDetail;

  const GoalCard({
    super.key,
    required this.goal,
    required this.onLike,
    required this.onDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        goal.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${goal.userCount}명 참여중',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  goal.daysLeftString,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: 0.5, // TODO: Calculate progress based on goal data
                backgroundColor: Colors.grey[200],
                minHeight: 8,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '50% 완료', // TODO: Calculate progress based on goal data
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: onLike,
                    ),
                    TextButton(
                      onPressed: onDetail,
                      child: Text(Tr.app.detailView.tr()),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
