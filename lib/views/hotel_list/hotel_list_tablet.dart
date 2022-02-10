part of hotel_list_view;

class _HotelListTablet extends StatelessWidget {
  final HotelListViewModel viewModel;

  _HotelListTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('HotelListTablet')),
    );
  }
}