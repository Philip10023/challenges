import React from 'react';
import QuestionList from './QuestionList';

class App extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    return(
      <div>
        <h1> We are Here to Help </h1>
        <QuestionList questions = {this.props.data} />
      </div>
    );
  }
};

export default App;
