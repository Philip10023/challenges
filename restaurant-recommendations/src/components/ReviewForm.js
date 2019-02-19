import React from 'react';

class ReviewForm extends React.Component {
  constructor(props){
    super(props);
  }
  render(){
    return(
      <div>
      <form>
        <label htmlFor="name"> Name: </label>
        <label type="text" name="name" />
        <label htmlFor="score"> Score: </label>
        <input type ="number" name="score" min='1' max='5' />
        <label htmlFor="review"> Review: </label>
        <input type="text" name="review" />
        <input type="submit" value="Submit" onSubmit={this.props.newReviewHandler}/>
      </form>
      </div>
    )
  }
}

export default ReviewForm
