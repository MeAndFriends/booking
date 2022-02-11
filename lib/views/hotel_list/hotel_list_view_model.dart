import 'package:booking/core/base/base_view_model.dart';
import 'package:booking/models/hotel.dart';

class HotelListViewModel extends BaseViewModel {
  List<Hotel> hotels = [];

  HotelListViewModel() {
    _initHotela();
  }

  void _initHotela() {
    hotels.add(Hotel(name: "test1"));
    hotels.add(Hotel(name: "test2"));
    hotels.add(Hotel(name: "test3"));
    hotels.add(Hotel(name: "test4"));
    hotels.add(Hotel(name: "test5"));
    hotels.add(Hotel(name: "test6"));
  }
}
