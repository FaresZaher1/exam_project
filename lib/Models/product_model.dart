class productmod
{
  List data;
  productmod({required this.data});
  factory productmod.con(Map Json)
  {
    return productmod(data: Json['data']['products']);
  }
}