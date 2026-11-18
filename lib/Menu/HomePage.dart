import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_pas/controller/List_Makanan_Controller.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "makanan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 255, 55),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 200,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.makananList.length,
            itemBuilder: (context, index) {
              final produk = controller.makananList[index];

              return SizedBox(
                width: 180,
                child: Card(
                  child: InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes.DetailMakanan,
                          arguments: {
                            'NamaMakanan': produk.name,
                            'harga': produk.price,                  
                            'description': produk.description,      
                            'imageUrl': produk.Image,          
                          },
                        );
                      },

                    child: ListTile(
            leading: Icon(
              Icons.shopping_bag,
              color: const Color.fromARGB(255, 15, 233, 7),
              size: 32, 
                      ),
                      title: Text(
              produk.name,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
                      ),
                      subtitle: Text(
              produk.price,
              style: const TextStyle(
                color: Color.fromARGB(255, 1, 245, 29),
                fontWeight: FontWeight.bold,                        ),
                      ),
                      trailing: const Icon(
              Icons.arrow_forward_ios, 
              size: 16,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}