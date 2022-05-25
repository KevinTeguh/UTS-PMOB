import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitled/page/detail.dart';
import 'package:untitled/page/login.dart';

import '../model/product_model.dart';
import 'form.dart';


class DashboardPage extends StatefulWidget {
  final int? status;
  const DashboardPage({Key? key,this.status}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final _scrollController = ScrollController();

  List<ProductModel> product = [
    ProductModel(
      auctioneer: 'Kevin',
      highestBidName: 'Andre',
      winner: 'Samsul',
      product: 'New Macbook Pro 2020 13 inch M1 Chip 8 Core CPU/ 8 Core GPU/ 512GB SSD - SPACE GREY IBOX',
      timeStart: '2022-05-20 07:00',
      timeEnd: '2022-05-25 19:00',
      description: 'Garansi 1 Tahun Apple International dan bisa dibantu claim\n\nGaransi dikirim random (aktif atau non-aktif)\nApabila ingin request non-aktif, bisa cantumkan di catatan/notes pada saat order\nTIDAK BISA REQUEST GARANSI DI CHAT ATAU DISKUSI\nTidak mencantumkan di catatan/notes=dikirim random\nTidak menerima komplain terkait garansi yang sudah berjalan\nBarang yang sudah dibuka tidak bisa diretur\nUntuk garansi yang aktif/sudah berjalan,akan tetap tercover selisih 1 tahun sejak tanggal unit diterima\n\nMengapa garansi aktif/sudah berjalan?\nUnit sudah di scan terlebih dahulu oleh pihak Apple untuk menandakan bahwa unit tersebut sudah terjual, oleh karena itu garansi sudah berjalan pertanggal pembelian kami di Apple\nUntuk garansi yang aktif/sudah berjalan 100% baru,segel resmi Apple dan tidak pernah dibuka untuk segelnya,mereka hanya aktivasi dengan scan barcode produk\n\nApple M1 chip with 8-core CPU, 8-core GPU, and 16-core Neural Engine\n\n8GB unified memory\n512GB SSD storage\n13-inch Retina display with True Tone\nMagic Keyboard\nTouch Bar and Touch ID\nForce Touch trackpad\nTwo Thunderbolt / USB 4 ports',
      photo: [
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/3/2/d96e1fc9-ed2c-4162-b24b-b07559171823.jpg',
        'https://images.tokopedia.net/img/cache/100-square/VqbcmM/2020/11/11/26dd67f8-75ba-46d8-863e-96bf9fb9c9b5.jpg'
      ],
      auctioneerRating: 4.5,
      winnerRating: 4.3,
      highestBid: '7.500.000',
      startBid: '3.000.000',
      percentageTargetPrice: 8.2,
      targetBid: '10.000.000'
    ),
    ProductModel(
      auctioneer: 'Kevin',
      highestBidName: 'Andre',
      winner: 'Samsul',
      product: 'New Macbook Pro 2020 13 inch M1 Chip 8 Core CPU/ 8 Core GPU/ 512GB SSD - SPACE GREY IBOX',
      timeStart: '2022-05-20 07:00',
      timeEnd: '2022-05-25 19:00',
      description: 'Garansi 1 Tahun Apple International dan bisa dibantu claim\n\nGaransi dikirim random (aktif atau non-aktif)\nApabila ingin request non-aktif, bisa cantumkan di catatan/notes pada saat order\nTIDAK BISA REQUEST GARANSI DI CHAT ATAU DISKUSI\nTidak mencantumkan di catatan/notes=dikirim random\nTidak menerima komplain terkait garansi yang sudah berjalan\nBarang yang sudah dibuka tidak bisa diretur\nUntuk garansi yang aktif/sudah berjalan,akan tetap tercover selisih 1 tahun sejak tanggal unit diterima\n\nMengapa garansi aktif/sudah berjalan?\nUnit sudah di scan terlebih dahulu oleh pihak Apple untuk menandakan bahwa unit tersebut sudah terjual, oleh karena itu garansi sudah berjalan pertanggal pembelian kami di Apple\nUntuk garansi yang aktif/sudah berjalan 100% baru,segel resmi Apple dan tidak pernah dibuka untuk segelnya,mereka hanya aktivasi dengan scan barcode produk\n\nApple M1 chip with 8-core CPU, 8-core GPU, and 16-core Neural Engine\n\n8GB unified memory\n512GB SSD storage\n13-inch Retina display with True Tone\nMagic Keyboard\nTouch Bar and Touch ID\nForce Touch trackpad\nTwo Thunderbolt / USB 4 ports',
      photo: [
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/3/2/d96e1fc9-ed2c-4162-b24b-b07559171823.jpg',
        'https://images.tokopedia.net/img/cache/100-square/VqbcmM/2020/11/11/26dd67f8-75ba-46d8-863e-96bf9fb9c9b5.jpg'
      ],
      auctioneerRating: 4.5,
      winnerRating: 4.3,
      highestBid: '7.500.000',
      startBid: '3.000.000',
      percentageTargetPrice: 8.2,
      targetBid: '10.000.000'
    ),
    ProductModel(
      auctioneer: 'Kevin',
      highestBidName: 'Andre',
      winner: 'Samsul',
      product: 'New Macbook Pro 2020 13 inch M1 Chip 8 Core CPU/ 8 Core GPU/ 512GB SSD - SPACE GREY IBOX',
      timeStart: '2022-05-20 07:00',
      timeEnd: '2022-05-25 19:00',
      description: 'Garansi 1 Tahun Apple International dan bisa dibantu claim\n\nGaransi dikirim random (aktif atau non-aktif)\nApabila ingin request non-aktif, bisa cantumkan di catatan/notes pada saat order\nTIDAK BISA REQUEST GARANSI DI CHAT ATAU DISKUSI\nTidak mencantumkan di catatan/notes=dikirim random\nTidak menerima komplain terkait garansi yang sudah berjalan\nBarang yang sudah dibuka tidak bisa diretur\nUntuk garansi yang aktif/sudah berjalan,akan tetap tercover selisih 1 tahun sejak tanggal unit diterima\n\nMengapa garansi aktif/sudah berjalan?\nUnit sudah di scan terlebih dahulu oleh pihak Apple untuk menandakan bahwa unit tersebut sudah terjual, oleh karena itu garansi sudah berjalan pertanggal pembelian kami di Apple\nUntuk garansi yang aktif/sudah berjalan 100% baru,segel resmi Apple dan tidak pernah dibuka untuk segelnya,mereka hanya aktivasi dengan scan barcode produk\n\nApple M1 chip with 8-core CPU, 8-core GPU, and 16-core Neural Engine\n\n8GB unified memory\n512GB SSD storage\n13-inch Retina display with True Tone\nMagic Keyboard\nTouch Bar and Touch ID\nForce Touch trackpad\nTwo Thunderbolt / USB 4 ports',
      photo: [
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/3/2/d96e1fc9-ed2c-4162-b24b-b07559171823.jpg',
        'https://images.tokopedia.net/img/cache/100-square/VqbcmM/2020/11/11/26dd67f8-75ba-46d8-863e-96bf9fb9c9b5.jpg'
      ],
      auctioneerRating: 4.5,
      winnerRating: 4.3,
      highestBid: '7.500.000',
      startBid: '3.000.000',
      percentageTargetPrice: 8.2,
      targetBid: '10.000.000'
    ),
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lelang - Kevin'
        ),
        actions: [
         IconButton(
            onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (ctx)=>LoginPage()), (route) => false);
            },
            icon: Icon(
                Icons.logout
            ),
          ),

        ],
      ),
      body: SizedBox(
        height: size.height,
        child: StaggeredGridView.countBuilder(
          staggeredTileBuilder: (index)=>StaggeredTile.fit(1),
          mainAxisSpacing: 2,
          crossAxisSpacing: 20,
          controller: _scrollController,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 70),
          crossAxisCount: 2,
          itemCount: product.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailPage(data: product[index],status: widget.status,)));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 3),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: product[index].photo?[0] ?? '',
                          fit: BoxFit.cover,
                          height: size.height * 0.25,
                          width: size.height * 0.25,
                          progressIndicatorBuilder: (_, url, __) {
                            return Container(
                              height: size.height * 0.25,
                              width: size.height * 0.25,
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          errorWidget: (context, url, error) {
                            return Container(
                              height: size.height * 0.25,
                              width: size.height * 0.25,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product[index].product ?? '',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Harga Pembuka',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey
                            ),
                          ),
                          Text(
                            'Rp. ${product[index].startBid}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.red
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: widget.status == 0?FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>FormProductPage()));
        },
        child: Icon(
          Icons.add
        ),
      ):null,
    );
  }
}
