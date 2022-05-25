import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/product_model.dart';
import 'package:untitled/page/form.dart';

class DetailPage extends StatefulWidget {
  final ProductModel? data;
  final int? status;
  const DetailPage({Key? key,this.data,this.status}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.data?.product ?? ''
        ),
        actions: [
          if (widget.status == 0)IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>FormProductPage(data: widget.data,)));
            },
            icon: Icon(
                Icons.edit
            ),
          ),
          if (widget.status == 1)IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.star_border
            ),
          ),
          if (widget.status == 1)IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.speaker_notes
            ),
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: CachedNetworkImage(
                  imageUrl: widget.data?.photo?[0] ?? '',
                  fit: BoxFit.cover,
                  height: size.height * 0.25,
                  width: size.width,
                  progressIndicatorBuilder: (_, url, __) {
                    return Container(
                      height: size.height * 0.25,
                      width: size.width,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return Container(
                      height: size.height * 0.25,
                      width: size.width,
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin:EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Waktu Mulai : ${widget.data?.timeStart}',
                        style: TextStyle(
                            fontSize: 12
                        ),
                      ),
                      Text(
                        'Waktu Berakhir : ${widget.data?.timeEnd}',
                        style: TextStyle(
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '55:45:03',
                        style: TextStyle(
                            fontSize: 12
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.only(bottom: 16),
              height: 6,
              decoration: BoxDecoration(
                color: Colors.grey.shade200
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data?.auctioneer ?? '',
                            style: TextStyle(
                                fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rating Auctioneer',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      color: Colors.grey
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 16,
                                          ),
                                          SizedBox(width: 3,),
                                          Text(
                                            widget.data?.auctioneerRating.toString() ?? '',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5,),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.black,
                                            size: 16,
                                          ),
                                          SizedBox(width: 3,),
                                          Text(
                                            '7',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(width: 50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rating Winner',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      color: Colors.grey
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 16,
                                          ),
                                          SizedBox(width: 3,),
                                          Text(
                                            widget.data?.winnerRating.toString() ?? '',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5,),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.black,
                                            size: 16,
                                          ),
                                          SizedBox(width: 3,),
                                          Text(
                                            '5',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 6,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Penawaran',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Penawaran Tertinggi',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      color: Colors.blue
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300
                            ),
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            widget.data?.highestBidName ?? '',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Rp. ${widget.data?.highestBid}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.orange
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 5,),
                  if (widget.status == 1)Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Masukkan harga'
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      ElevatedButton(
                        onPressed: (){

                        },
                        child: Text(
                          'Bid'
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 6,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    widget.data?.description ?? '',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
