library hotel_list_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'hotel_list_view_model.dart';

part 'hotel_list_mobile.dart';
part 'hotel_list_tablet.dart';
part 'hotel_list_desktop.dart';

class HotelListView extends StatelessWidget {
  const HotelListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HotelListViewModel viewModel = HotelListViewModel();
    return ViewModelProvider<HotelListViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _HotelListMobile(viewModel),
            desktop: _HotelListDesktop(viewModel),
            tablet: _HotelListTablet(viewModel),
          );
        });
  }
}
