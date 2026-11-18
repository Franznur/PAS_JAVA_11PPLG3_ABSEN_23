import 'package:proyek_pas/models/Makanan_Model.dart';
import 'package:get/get.dart';

class ListMakananController {
  List<MakananModel> makananList = [

      MakananModel(
      name: 'Nasi Goreng Spesial ',
      price: 25.000,
      description: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
      Image: ""
    ),
    MakananModel(
      name: 'Ayam Bakar Madu',
      price: 30.000,
      description: 'Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.',
      Image: ""
    ),
    MakananModel(
      name: 'Sate Ayam Madura',
      price: 28.000,
      description: '10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.',
      Image: ""
    ),  
    MakananModel(
      name: 'Mie Ayam Bakso',
      price: 20.000,
      description: 'Mie kenyal dengan topping ayam kecap, sawi hijau, dan2 butir bakso sapi.',
      Image: ""
    ),  
    MakananModel(
      name: 'Es Teh Manis Jumbo ',
      price: 8.000,
      description: 'Minuman teh melati segar dengan gula asli dan es batu kristal.',
      Image: ""
    ),


  ].obs ;


}