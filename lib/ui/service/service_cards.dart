import 'package:flutter/material.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/ui/client/client_card_tile.dart';
import 'package:slabs_quiz/ui/common/info_message_view.dart';
import 'package:slabs_quiz/ui/service/service_card_tile.dart';
import 'package:slabs_quiz/ui/service/service_page_view_model.dart';

class ServiceCards extends StatelessWidget {
  static const Key emptyViewKey = const Key('emptyView');
  static const Key contentKey = const Key('content');

  ServiceCards({
    @required this.viewModel,
  });

  final ServicePageViewModel viewModel;

  Widget build(BuildContext context) {
    if (viewModel.services.isEmpty) {
      return InfoMessageView(
        key: emptyViewKey,
        title: 'No hay servicios',
        description: 'No hay servicios disponibles',
      );
    } else {
      ListView listView = ListView.builder(
          padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
          itemCount: viewModel.services.length,
          itemBuilder: (BuildContext context, int index) {
            Service service = viewModel.services[index];
            return ServiceCardTile(service, viewModel);
          });

      return Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: listView));
    }
  }
}
