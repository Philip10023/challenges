import React, { Component } from 'react';
import { Link } from 'react-router';
import NotButton from './NotButton';

class Dashboard extends Component{
  constructor(props){
    super(props);
    this.state = {

    }
  }

  render(){
    return(
      <div className="row nav-bar">
        <div><Link to="/"> Home </Link></div>
        <div><Link to="/goodbye"> Goodbye </Link></div>
        <div><Link to="/greeting"> Greeting </Link></div>
        <div><Link to="/CustomGreeting"> CustomGreeting </Link></div>
        <div><NotButton/></div>
        {this.props.children}
      </div>
    )
  }
}

export default Dashboard;
