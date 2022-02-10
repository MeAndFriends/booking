part of hotel_list_view;

class _HotelListMobile extends StatelessWidget {
  final HotelListViewModel viewModel;

  _HotelListMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('HotelListMobile')),
    );
  }
}