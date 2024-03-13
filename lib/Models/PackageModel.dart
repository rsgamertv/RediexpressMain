import 'package:RediExpress/StaticClasses/CurrentUserClass.dart';
import 'package:dio/dio.dart';

class PackageModel{

  PackageModel({
    required this.originCountry,
    required this.originState,
    required this.originAddress,
    required this.originPhoneNumber,
    required this.originOthers,
    required this.destinationCountry,
    required this.destinationState,
    required this.destinationAddress,
    required this.destinationPhoneNumber,
    required this.destinationOthers,
    required this.packageItems,
    required this.weightOfItems,
    required this.worthOfItems,
  });

  int? id;

  String originCountry;
  String originState;
  String originAddress;
  String originPhoneNumber;
  String originOthers;

  String destinationCountry;
  String destinationState;
  String destinationAddress;
  String destinationPhoneNumber;
  String destinationOthers;

  String packageItems;
  int weightOfItems;
  int worthOfItems;

  Future<bool> addPackage() async{
    final json = new Map<String, dynamic>();

    json['OriginAddress'] = this.originAddress;
    json['OriginState'] = this.originState;
    json['OriginCountry'] = this.originCountry;
    json['PhoneNumber'] = this.originPhoneNumber;
    json['OriginOthes'] = this.originOthers;

    json['DestinationAddress'] = this.destinationAddress;
    json['DestinationState'] = this.destinationState;
    json['DestinationCountry'] = this.destinationCountry;
    json['DestinationNumber'] = this.destinationPhoneNumber;
    json['DestinationOthes'] = this.destinationOthers;

    json['PackageItems'] = this.packageItems;
    json['WeightOfItems'] = this.weightOfItems;
    json['WorthOfItems'] = this.worthOfItems;

    final response = await Dio().post(
        'http://83.147.245.57/package_add?userId=${CurrentUserClass.user.id}', data: json
    );

    final jsonResponse = response.data as Map<String, dynamic>;

    return jsonResponse['success'];
  }
}