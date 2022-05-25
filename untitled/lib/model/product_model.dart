class ProductModel{
  String? auctioneer,
      winner,
      product,
      timeStart,
      timeEnd,
      highestBid,
      highestBidName,
      startBid,
      description,
      targetBid;

  List<String>? photo;
  double? auctioneerRating,
      winnerRating,
      percentageTargetPrice;
  ProductModel({
    this.auctioneer,
    this.highestBidName,
    this.winner,
    this.product,
    this.timeStart,
    this.timeEnd,
    this.description,
    this.photo,
    this.auctioneerRating,
    this.winnerRating,
    this.highestBid,
    this.startBid,
    this.percentageTargetPrice,
    this.targetBid
  });
}