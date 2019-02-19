import React from 'react';


class Answer extends React.Component{
  constructor(props){
  super(props);
}

  render() {
    return(
      <li onClick ={this.props.onAnswerClick}
      className={this.props.className}>{this.props.body}</li>



    )
  }
}


export default Answer;
