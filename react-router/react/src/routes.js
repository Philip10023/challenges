import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import RestaurantsIndexContainer from './containers/RestaurantsIndexContainer';
import RestaurantShowContainer from './containers/RestaurantShowContainer';

let routes = (
  <Route path="/" component={Layout}>
    <IndexRoute component={RestaurantsIndexContainer} />
    <Route path="restaurants/:id" component={RestaurantShowContainer} />
  </Route>
);

export default routes;
