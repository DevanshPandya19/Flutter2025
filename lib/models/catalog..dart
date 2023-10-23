class CatalogModel{
  static final items=[
    Item(
        id: 1,
        name: "IPhone 15 pro",
        desc: "Apple Iphone 15th generation",
        price: 999,
        color: "#33505a",
        image:"https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-15-finish-select-202309-6-1inch-pink?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1692923780378"
  )
  ];

}
class Item {
  final int  id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;


  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  //factory Item.fromMap(Map<String,dynamic>map){
    //return Item(
      //id: map["id"],
      //name: map["name"],
      //desc: map["desc"],
      //price: map["price"],
      //color: map["color"],
      //image: map["image"],
    //);
  //}
  //toMap()=>{
    //match karega backend sai
    //"id":id,
    //"name":name,
    //"desc":desc,
    //"price":price,
    //"color":color,
    //"image":image,
  //};
}

