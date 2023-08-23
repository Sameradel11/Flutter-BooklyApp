import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'retail_price.dart';

class Offer extends Equatable {
  final int? finskyOfferType;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;

  const Offer({this.finskyOfferType, this.listPrice, this.retailPrice});

  factory Offer.fromJsonData(Map<String, dynamic> json) => Offer(
        finskyOfferType: json['finskyOfferType'] as int?,
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJsonData(json['listPrice'] as Map<String, dynamic>),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJsonData(
                json['retailPrice'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJsonData() => {
        'finskyOfferType': finskyOfferType,
        'listPrice': listPrice?.toJsonData(),
        'retailPrice': retailPrice?.toJsonData(),
      };

  @override
  List<Object?> get props => [finskyOfferType, listPrice, retailPrice];
}
