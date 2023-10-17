part of '../user_view.dart';

class _Activity extends StatefulWidget {
  const _Activity();

  @override
  State<_Activity> createState() => _ActivityState();
}

class _ActivityState extends State<_Activity>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.dashboard),
                  SizedBox(width: 8),
                  Text('Posts'),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.comment),
                  SizedBox(width: 8),
                  Text('Comments'),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              Center(child: Text('Posts will be displayed here')),
              Center(child: Text('Comments will be displayed here')),
            ],
          ),
        ),
      ],
    );
  }
}
