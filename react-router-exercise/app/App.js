import React, { Component } from 'react';
import { Router, Route, Link, browserHistory } from 'react-router';
import Greeting from './Greeting'


class App extends Component {
  constructor(props){
    super(props)
    this.state = {

    }
  }

  render() {
    let routes = (
      <Route path="/" component={Dashboard}>
        <Route path='greeting' component={Greeting} />
        <Route path='goodbye' component={Goodbye} />
        <Route path='CustomGreeting' component={CustomGreeting}/>
      </Route>
    )
    return(
    <div>
      <Router history={browserHistory} routes={routes}/>
    </div>
    )
  }
}

export default App;
