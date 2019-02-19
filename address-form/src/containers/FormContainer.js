import React, { Component } from 'react';
	import TextField from '../components/TextField';
	import Select from '../components/Select';

	class FormContainer extends Component {
	  constructor(props) {
	    super(props);
	    this.state = {
	      errors: {},
	      firstName: '',
	      lastName: '',
	      address: '',
	      city: '',
	      listedStates: ['AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA',
	                    'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD',
	                    'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ',
	                    'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC',
	                    'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY'],
	      homeState: '',
	      zipCode: '',
	      phoneNumber: '',
	      email: ''
	    };
	    this.handleClearForm = this.handleClearForm.bind(this);
	    this.handleFormSubmit = this.handleFormSubmit.bind(this);
	    this.handleFirstNameChange = this.handleFirstNameChange.bind(this);
	    this.handleLastNameChange = this.handleLastNameChange.bind(this);
	    this.handleAddressChange = this.handleAddressChange.bind(this);
	    this.handleCityChange = this.handleCityChange.bind(this);
	    this.handleStateChange = this.handleStateChange.bind(this);
	    this.handleZipChange = this.handleZipChange.bind(this);
	    this.handlePhoneNumberChange = this.handlePhoneNumberChange.bind(this);
	    this.handleEmailChange = this.handleEmailChange.bind(this);
	    this.validateFirstName = this.validateFirstName.bind(this);
	    this.validateLastName = this.validateLastName.bind(this);
	    this.validateAddress = this.validateAddress.bind(this);
	    this.validateCity = this.validateCity.bind(this);
	    this.validateState = this.validateState.bind(this);
	    this.validateZipCode = this.validateZipCode.bind(this);
	    this.validatePhoneNumber = this.validatePhoneNumber.bind(this);
	    this.validateEmail = this.validateEmail.bind(this);
	  }

	  handleClearForm(event) {
	    event.preventDefault();
	    this.setState({
	      errors: {},
	      firstName: '',
	      lastName: '',
	      address: '',
	      city: '',
	      homeState: '',
	      zipCode: '',
	      phoneNumber: '',
	      email: ''
	    });
	  }

	  handleFormSubmit(event) {
	    event.preventDefault();
	    if (
	      this.validateFirstName(this.state.firstName) &&
	      this.validateLastName(this.state.lastName) &&
	      this.validateAddress(this.state.address) &&
	      this.validateCity(this.state.city) &&
	      this.validateState(this.state.homeState) &&
	      this.validateZipCode(this.state.zipCode) &&
	      this.validatePhoneNumber(this.state.phoneNumber) &&
	      this.validateEmail(this.state.email)
	    ) {
	      console.log(this.state.firstName);
	      console.log(this.state.lastName);
	      console.log(this.state.address);
	      console.log(this.state.city);
	      console.log(this.state.homeState);
	      console.log(this.state.zipCode);
	      console.log(this.state.phoneNumber);
	      console.log(this.state.email);
	      this.handleClearForm(event);
	    }
	  }

	  handleFirstNameChange(event) {
	    this.validateFirstName(event.target.value);
	    this.setState({ firstName: event.target.value });
	  }
	  handleLastNameChange(event) {
	    this.validateLastName(event.target.value);
	    this.setState({ lastName: event.target.value });
	  }
	  handleAddressChange(event) {
	    this.validateAddress(event.target.value);
	    this.setState({ address: event.target.value });
	  }
	  handleCityChange(event) {
	    this.validateCity(event.target.value);
	    this.setState({ city: event.target.value });
	  }
	  handleStateChange(event) {
	    this.validateState(event.target.value);
	    this.setState({ homeState: event.target.value });
	  }
	  handleZipChange(event) {
	    this.validateZipCode(event.target.value);
	    this.setState({ zipCode: event.target.value });
	  }
	  handlePhoneNumberChange(event) {
	    this.validatePhoneNumber(event.target.value);
	    this.setState({ phoneNumber: event.target.value });
	  }
	  handleEmailChange(event) {
	    this.validateEmail(event.target.value);
	    this.setState({ email: event.target.value });
	  }

	  validateFirstName(firstNameField) {
	    if (firstNameField === '' || firstNameField === ' ') {
	      let newError = {firstName: 'First name field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
	      delete errorState.firstName;
	      this.setState({ errors: errorState });
	      return true;
	    }
	  }
	  validateLastName(lastNameField) {
	    if (lastNameField === '' || lastNameField === ' ') {
	      let newError = {lastName: 'Last name field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
	      delete errorState.lastName;
	      this.setState({ errors: errorState });
	      return true;
	    }
    	  }
	  validateAddress(addressField) {
	    if (addressField === '' || addressField === ' ') {
	      let newError = {address: 'Address field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
	      delete errorState.address;
	      this.setState({ errors: errorState });
	      return true;
	    }
	  }
	  validateCity(cityField) {
	    if (cityField === '' || cityField === ' ') {
	      let newError = {city: 'City field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
        	      delete errorState.city;
	      this.setState({ errors: errorState });
	      return true;
	    }
	  }
	  validateState(stateField) {
	    if (stateField === '' || stateField === ' ') {
	      let newError = {homeState: 'State field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
	      delete errorState.homeState;
	      this.setState({ errors: errorState });
	      return true;
	    }
	  }
	  validateZipCode(zipCodeField) {
	    if (zipCodeField === '' || zipCodeField === ' ') {
	      let newError = {zipCode: 'Zip code field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
	      delete errorState.zipCode;
	      this.setState({ errors: errorState });
	      return true;
	    }
	  }
	  validatePhoneNumber(phoneField) {
	    if (phoneField === '' || phoneField === ' ') {
	      let newError = {phoneNumber: 'Phone number field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
	      delete errorState.phoneNumber;
	      this.setState({ errors: errorState });
	      return true;
	    }
	  }
    	  validateEmail(emailField) {
	    if (emailField === '' || emailField === ' ') {
	      let newError = {email: 'Email field may not be blank.' };
	      this.setState({ errors: Object.assign(this.state.errors, newError) });
	      return false;
	    }else{
	      let errorState = this.state.errors;
	      delete errorState.email;
	      this.setState({ errors: errorState });
	      return true;
	    }
	  }

	  render() {
	    let errorDiv;
	    let errorItems;
	    if (Object.keys(this.state.errors).length > 0) {
	      errorItems = Object.values(this.state.errors).map(error => {
	        return(<li key={error}>{error}</li>)
	      })
	      errorDiv = <div className="callout alert">{errorItems}</div>
	    }
	    return (
	      <form onSubmit={this.handleFormSubmit} className="callout" id="shipping-address-form">
	        <h>Shipping Address</h>
	        {errorDiv}
	        <TextField
	          content={this.state.firstName}
	          label='First Name:'
	          name='firstName'
	          handlerFunction={this.handleFirstNameChange}
	        />

	        <TextField
	          content={this.state.lastName}
	          label='Last Name:'
	          name='lastName'
	          handlerFunction={this.handleLastNameChange}
	        />

	        <TextField
	          content={this.state.address}
	          label='Address:'
	          name='address'
	          handlerFunction={this.handleAddressChange}
	        />

	        <TextField
	          content={this.state.city}
	          label='City:'
	          name='city'
	          handlerFunction={this.handleCityChange}
	        />

	        <Select
	          handlerFunction={this.handleStateChange}
	          label='State:'
	          name='state'
	          options={this.state.listedStates}
	          selectedOption={this.state.homeState}
	        />

	        <TextField
	          content={this.state.zipCode}
	          label='Zip Code:'
	          name='zipCode'
	          handlerFunction={this.handleZipChange}
	        />

	        <TextField
	          content={this.state.phoneNumber}
	          label='Phone Number:'
	          name='phoneNumber'
	          handlerFunction={this.handlePhoneNumberChange}
	        />

	        <TextField
	          content={this.state.email}
	          label='Email:'
	          name='email'
	          handlerFunction={this.handleEmailChange}
	        />

	        <input type="submit" className="button" value="Submit "/>
	      </form>
	    )
	  }
	}

	export default FormContainer
