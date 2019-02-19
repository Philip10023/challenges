import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import RestaurantsIndexContainer from './containers/RestaurantsIndexContainer';
import RestaurantShowContainer from './containers/RestaurantShowContainer';

let routes = (
  <Route path="/" component={Layout}>
    <IndexRoute component={RestaurantsIndexContainer} />
    <Route path="reviews/:id" component={RestaurantShowContainer} />
  </Route>
);

export default routes;
