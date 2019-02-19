import React from 'react'
import {browserHistory} from 'react-router'

const NotButton=props=>{
  return(
    <div><button onClick={browserHistory.goBack}>Not a Button</button></div>
  )
}

export default NotButton;
