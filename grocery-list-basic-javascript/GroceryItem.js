class GroceryItem {
  constructor(name, quantity)
  {
  this.name = name;
  if (!!quantity){
  this.quantity = quantity;
}
  else { this.quantity = 1;
  }
}}
