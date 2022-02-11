import 'package:flutter/cupertino.dart';

import '../hotel_list_view_model.dart';

Widget getListHotels(HotelListViewModel viewModel) {
  if (viewModel.hotels == null) {
    return Center(child: Text("hotels don't exist"));
  }

  return ListView.builder(
      itemCount: viewModel.hotels.length,
      itemBuilder: (context, i) {
        var item = viewModel.hotels.elementAt(i);
        return Center(
          child: Text(item.name),
          heightFactor: 6,
        );
      });
}
