import 'package:flutter/material.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_images.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/ui/vehicle/vehicles_page_view_model.dart';

class VehicleCardTile extends StatefulWidget {
  VehicleCardTile(this.vehicle, this.viewModel);

  final Vehicle vehicle;
  final VehiclesPageViewModel viewModel;

  @override
  VehicleCardTileState createState() {
    return VehicleCardTileState();
  }
}

class VehicleCardTileState extends State<VehicleCardTile> {
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
                            image: widget.vehicle.imgUrl,
                            fit: BoxFit.fitHeight,
                            height: 90.0,
                            width: 90.0,
                            imageCacheHeight: 400)),
                    SizedBox(width: 15.0),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(
                                top: 14.0, bottom: 15.0, right: 10.0),
                            height: 90.0,
                            child: InkWell(
                                onTap: () => widget.viewModel
                                    .getServiceByVehicle(widget.vehicle.id),
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
                                                        '${widget.vehicle.manufacturer} \n${widget.vehicle.model} ${widget.vehicle.year}',
                                                        style: AppTextStyles
                                                            .subtitle3,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 2))),
                                          ]),
                                    ])))),
                  ]),
            ]));
  }
}
