import 'package:flutter/material.dart';
import 'package:untitled43/productDetails.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final String imageURL;
  final String price;
  Product(this.name, this.imageURL, this.price);
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product('Mercedes V class', 'https://imgd.aeplcdn.com/370x208/cw/ec/37616/MercedesBenz-VClass-Right-Front-Three-Quarter-147184.jpg?wm=0&q=80', '8 330 000 ₽'),
    Product('Mercedes gt 63 amg', 'https://hips.hearstapps.com/hmg-prod/images/2024-mercedes-amg-gt-4-door-coupe-101-652d62264a28d.jpg?crop=1.00xw:1.00xh;0,0&resize=768:*', '34 986 000 ₽'),
    Product('Mercedes R 63 amg', 'https://hips.hearstapps.com/autoweek/assets/s3fs-public/914002-1_0.jpg','10 000 000 ₽'),
    Product('Mercedes S 63 amg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfJ-kCoMVDuuWhJqbzB1C1VVRKaKsof80LkA&usqp=CAU','40 000 000 ₽ '),
    Product('Mercedes G 63 amg', 'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_default/v1/editorial/vhs/Mercedes-amg-g63.png','60 000 000 ₽'),
    Product('Mercedes ML 63 amg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDIs6KMltto0gwUFy2cvHhlbYZGSW5-H5bag&usqp=CAU','18 000 000 ₽'),
    Product('Mercedes CLS 63 amg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBcM1Ypb7uxvf0rHDXvYGxbFZFDnZU8b_KHQ&usqp=CAU','10 000 000 ₽'),
    Product('Mercedes GLE 63 amg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjzX0ZbvnUGR8FC51rZIq9MyOmjBhQ_gJc2A&usqp=CAU','18 000 000 ₽'),
    Product('Deoweee Nexia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRev6PBVhzP4icIDn7GPIFbvKk5x3I1LCGqFw&usqp=CAU','50 000 000 ₽'),
    Product('Lada Priora', 'https://riaauto.ru/images/car/lada/picCar/1908/adf7priora.png','500 000 ₽'),
    Product('Porshe 911 turbp S', 'https://files.porsche.com/filestore/image/multimedia/none/911-tus-modelimage-sideshot/model/930894f1-6214-11ea-80c8-005056bbdc38/porsche-model.png','20 000 000 ₽'),
    Product('Lada 2113 tuning', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfGgacWiyxIgXXSrwu1FzjuLDBBeKZoyBQ2NuL0i3Yp_fJ4_cv2OFbHkQgHuZHTBl3LeI&usqp=CAU','700 000 ₽'),
    Product('Lada 2108 tuning', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLsamoTmgSUQXlSM8LV-abI6DgF7-Ibr-iTw&usqp=CAU','400 000 ₽'),
    Product('BMW X6M Hammon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsYe3JIbHD3BKb5E1mm7Y_NOxrXMWhTyWmQw&usqp=CAU','50 000 000 ₽'),
    Product('Skoda Octavia Police Russia', 'https://www.autostat.ru/application/includes/blocks/big_photo/images/cache/000/076/309/e7ab1264-670-0.jpg','10 000 000 ₽'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Список товаров'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Image.network(
                    products[index].imageURL,
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                  Text(products[index].name),
                  Text(products[index].price),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                              ImageContent: products[index].imageURL,
                              TextContent: products[index].name,
                          ),
                        ),
                      );
                    },
                    child: Text("Buy"),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}