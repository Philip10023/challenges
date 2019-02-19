import React from "react";

class Question extends React.Component {
	  constructor(props) {
	    super(props);
	  }

render() {
    return(
	    <ul className = "vertical menu">
	        <li>
	          <a className = {"question " + this.props.selected} href="#" onClick={this.props.handleQuestionClick}>{this.props.question}</a>
	          <p className={this.props.selected}>{this.props.answer}</p>
	        </li>
	      </ul>
	    );
	  }
	};

	export default Question;
