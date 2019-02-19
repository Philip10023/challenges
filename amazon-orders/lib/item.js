  class Item {
    constructor(name, manufacturer, price, description) {
        this.name = name;
        this.manufacturer = manufacturer;
        this.price = price;
        this.description = description;
    }

    summary() {
        let itemSummary = `Name: ${this.name}\n `;
        if (null !== this.description) {
            itemSummary += `Description: ${this.description} \n`;
        }
        itemSummary += `Manufacturer: ${this.manufacturer} \nPrice: ${this.price.toFixed(2)}`;
        return itemSummary;
    }
  }
