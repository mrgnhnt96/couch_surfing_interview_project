part of '../posts_view.dart';

class _IconCount extends StatelessWidget {
  const _IconCount({required this.icon, required this.count});

  final IconData icon;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon),
        const SizedBox(width: 4),
        Text(
          count,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
