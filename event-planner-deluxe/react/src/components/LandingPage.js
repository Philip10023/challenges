import React from 'react';

const LandingPage = props => {
  return (
    <div className="small-6 medium-12 center large-4">
      <div className="text-center">
        <div className="row">
          <h1 className="header">{props.event.name}</h1>
        </div>
        <div className="row">
            <h2 className="event">by {props.event.organizer}</h2>
        </div>
     </div>

        <div className="row">
          <div className="small-6 column">
            <div className="date-header">
              <h3 className="time-header">Date & Time</h3>
            </div>
      <div className="date-time">
        <p className="date">{props.event.date.toDateString()}</p>
        <p className="time">{props.event.date.toTimeString()}</p>
          </div>
        </div>
      </div>
      <div className="yeah">
        <div className="small-6 column">
          <div className="text-left">
            <h3 className="location">Location</h3>
        <div className="location-info">
          <p>{props.event.venue}</p>
          <p>{props.event.address}</p>
        </div>
        </div>
        </div>
    </div>
      <div className="text-center">
        <button className="pickles button" onClick={props.registrationLink}>Register</button>
        <button className="applesauce button" onClick={props.registrantsLink}>See Who is Coming</button>
      </div>
    </div>
  )
}

export default LandingPage;
