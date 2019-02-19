import React from 'react';
import Question from './Question'

class QuestionList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedQuestionId: null,
      questions: this.props.questions
    }
    this.handleQuestionClick = this.handleQuestionClick.bind(this)
  }

  handleQuestionClick(id) {
    if (this.state.selectedQuestionId === id) {
      this.setState( {selectedQuestionId: null})
    } else {
        this.setState( {selectedQuestionId: id});
    }
  }

  componentDidMount() {
      fetch('http://localhost:3000/api/v1/questions')
      .then(response => {
        if(response.ok) {
          console.log(response);
          return response;
        } else {
            let errorMessage = `${response.status} (${response.statusText})`,
             error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(body => {
        console.log(body);
        this.setState({questions: body});
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let questionList = this.state.questions.map((question) => {
      let selected = "hideClass";

      if (question.id === this.state.selectedQuestionId) {
        selected = "showClass";
      }

      let onQuestionClick = () => this.handleQuestionClick(question.id);
      return (
        <Question
          key = {question.id}
          question = {question.question}
          answer = {question.answer}
          selected = {selected}
          handleQuestionClick = {onQuestionClick}/>
      )
    });

    return (
      <ul>{questionList}</ul>
    );
  }
}


export default QuestionList;
