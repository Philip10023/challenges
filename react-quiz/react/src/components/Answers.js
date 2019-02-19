import React from 'react';
import Answer from './Answer';

class Answers extends React.Component {
  constructor(props) {
    super(props);
    this.state={message: null,
      selectId: null
    }
    this.handleAnswerClick = this.handleAnswerClick.bind(this)

  }

  handleAnswerClick(correctStatus, id ){
    this.setState({ selectId: id })
    if(correctStatus === true){
      this.setState({message: "correct"})
    }else{
     this.setState({ message: "incorrect"})
    }
  }

  render(){
    let className;
    let answerList = this.props.answers.map(bite => {

      let onAnswerClick = () => {
        this.handleAnswerClick(bite.correct, bite.id)
      }

      if(bite.id === this.state.selectId){
        className = "selected"
      }
      else{
        className= ""
      }


      return(
        <Answer
        key={bite.id}
        id={bite.id}
        body={bite.body}
        correct={bite.correct}
        onAnswerClick={onAnswerClick}
        className = {className}
        />
      )
    })

    return(
      <div>
        <ul>{answerList}  </ul>
        <h3> {this.state.message}</h3>
      </div>
    )
  }
}

export default Answers;
