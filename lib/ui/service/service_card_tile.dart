import 'package:flutter/material.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_images.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/ui/service/service_page_view_model.dart';

class ServiceCardTile extends StatefulWidget {
  ServiceCardTile(this.service, this.viewModel);

  final Service service;
  final ServicePageViewModel viewModel;

  @override
  ServiceCardsTileState createState() {
    return ServiceCardsTileState();
  }
}

class ServiceCardsTileState extends State<ServiceCardTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.darkColor.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(4.0)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0)),
                        child: FadeInImage.assetNetwork(
                            placeholder: AppImages.placeHolder,
                            image: widget.service.serviceName,
                            fit: BoxFit.fitHeight,
                            height: 60.0,
                            width: 60.0,
                            imageCacheHeight: 400)),
                    SizedBox(width: 15.0),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(
                                top: 14.0, bottom: 15.0, right: 10.0),
                            child: InkWell(
                                onTap: () => widget.viewModel,
                                child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                                child: Container(
                                                    child: Text(
                                                        widget.service.date
                                                            .isNotEmpty
                                                            ? '${widget.service
                                                            .serviceName} \nFecha: ${widget
                                                            .service.date}'
                                                            : '${widget.service
                                                            .serviceName} \nFecha: No aplica',
                                                        style:
                                                        AppTextStyles.subtitle3,
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        maxLines: 2))),
                                          ]),
                                    ])))),
                  ]),
            ]));
  }
}
