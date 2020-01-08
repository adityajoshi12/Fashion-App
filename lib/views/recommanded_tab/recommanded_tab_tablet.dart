part of recommanded_tab_view;

class _RecommandedTabTablet extends StatelessWidget {
  final RecommandedTabViewModel viewModel;

  _RecommandedTabTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('RecommandedTabTablet')),
    );
  }
}