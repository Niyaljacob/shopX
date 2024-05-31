import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx_getx/controller/product_controller.dart';
import 'package:shopx_getx/models/product.dart';
import 'package:shopx_getx/models/product.dart';

class HomePage extends StatelessWidget {
  final ProductController productcontroller = Get.put(ProductController());
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back),
            Icon(Icons.shopping_cart_rounded)
          ],
        ),
        
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'ShopX',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.view_list_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.grid_view),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                children: List.generate(productcontroller.productList.length, (index) {
                  
                }).map((item) {
                  return Obx(() =>StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.8,
                      child: Container(
                    color: Colors.blue[100],
                    
                  ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


