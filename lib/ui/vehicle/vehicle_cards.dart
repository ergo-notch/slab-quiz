import 'package:flutter/material.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/ui/common/info_message_view.dart';
import 'package:slabs_quiz/ui/vehicle/vehicle_card_tile.dart';
import 'package:slabs_quiz/ui/vehicle/vehicles_page_view_model.dart';

class VehicleCards extends StatelessWidget {
  static const Key emptyViewKey = const Key('emptyView');
  static const Key contentKey = const Key('content');

  VehicleCards({
    @required this.viewModel,
  });

  final VehiclesPageViewModel viewModel;

  Widget build(BuildContext context) {
    if (viewModel.vehicles.isEmpty) {
      return InfoMessageView(
        key: emptyViewKey,
        title: 'No hay autos',
        description: 'No hay autos disponibles',
      );
    } else {
      ListView listView = ListView.builder(
          padding: const EdgeInsets.only(bottom: 10.0),
          itemCount: viewModel.vehicles.length,
          itemBuilder: (BuildContext context, int index) {
            Vehicle vehicle = viewModel.vehicles[index];
            return VehicleCardTile(vehicle, viewModel);
          });

      return Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: listView));
    }
  }
}
