import 'package:get/get.dart';

class DetailMakananController extends GetxController {

late String NomorMakanan;
late String namaMakanan;
late String hargaMakanan;
late String deskripsiMakanan;
late String gambarMakanan;

@override
void onInit() {
  super.onInit();

final args = Get.arguments;
  
  NomorMakanan = args['NomorMakanan'] ?? '';
  namaMakanan = args['namaMakanan'] ?? '';
  hargaMakanan = args['hargaMakanan'] ?? '';
  deskripsiMakanan = args['deskripsiMakanan'] ?? '';
  gambarMakanan = args['gambarMakanan'] ?? '';
  }
}