import 'package:flutter/material.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';
import 'package:slabs_quiz/ui/client/client_card_tile.dart';
import 'package:slabs_quiz/ui/client/clients_page_view_model.dart';
import 'package:slabs_quiz/ui/common/info_message_view.dart';

class ClientCards extends StatelessWidget {
  static const Key emptyViewKey = const Key('emptyView');
  static const Key contentKey = const Key('content');

  ClientCards({
    @required this.viewModel,
  });

  final ClientsPageViewModel viewModel;

  Widget build(BuildContext context) {
    if (viewModel.clients.isEmpty) {
      return InfoMessageView(
        key: emptyViewKey,
        title: 'No hay clientes',
        description: 'No hay clientes',
      );
    } else {
      ListView listView = ListView.builder(
          padding: const EdgeInsets.only(bottom: 10.0, top: 20),
          itemCount: viewModel.clients.length,
          itemBuilder: (BuildContext context, int index) {
            Client client = viewModel.clients[index];
            return ClientCardsTile(client, viewModel);
          });

      return Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: listView));
    }
  }
}
