import React from 'react';
import Grocery from './Grocery';
import App from './App';

const GroceryList = (props) => {
  let groceries = props.groceries.map((grocery) => {
    return (
      <Grocery
        key={grocery.id}
        name={grocery.name}
        handleButtonClick={props.handleButtonClick}
      />
    );
  });

  return (
    <ul>
      {groceries}
    </ul>
  );
};

export default GroceryList;
