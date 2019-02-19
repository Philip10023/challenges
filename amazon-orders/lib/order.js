class Order {
    constructor (placedOn, customer, paymentMethod, shippingAddress, items) {
      this.placedOn = placedOn;
      this.customer = customer;
      this.paymentMethod = paymentMethod;
      this.shippingAddress = shippingAddress;
      this.items = [];

    }
    addItem(item){
      this.items.push(item);

    }

    total(){
        let sum = 0;

        this.items.forEach(function(item){
          sum += item.price;

        });
        return sum;
  }



    summary(){
         let orderSummary = `Date: ${this.placedOn} \nCustomer: ${this.customer};
     \nPayment method: ${this.paymentMethod} \nShipping address ${this.shippingAddress};
     \n\n Items:`;
         this.items.forEach(function(item) {
           orderSummary += item.summary();
           orderSummary += `/n`;
         });
         orderSummary += `Total: ${this.total()}`;

         return orderSummary;
     }}
