let addressForm = document.shippingAddressForm;
addressForm.addEventListener('submit', (event) => {
//   // check if form is valid, here
// let buttonElement = document.getElementById('press');
// buttonElement.addEventListener('click', validateForm);
//
event.preventDefault();
function validateForm() {
    let firstName = document.getElementById('first-name').value;
//     // let lastName = document.findElementById('last-name').value;
//     // let address = document.findElementById('address').value;
//     // let city = document.findElementById('city').value;
//     // let state = document.findElementById('state').value;
//     // let zipCode = document.findElementById('zip-code').value;
//     // let phoneNumber = document.findElementById('phone-number').value;
//     // let email = document.findElementById('email').value;
//
  if (firstName.value === "") {
    // firstNameInput.className += ' .errorInput';

    firstName.focus();
    let addInput = document.createElement('li');
    addInput.className('my-list');
    addInput.innerHTML = 'First Name';
//
  let missingInfo = document.getElementById('missing-info');
  missingInfo.appendChild(addInput);
  alert('Please enter all fields.');
}
}
});



//let addressForm = document.shippingAddressForm
//addressForm.addEventListener('submit', (event) => {
//  event.preventDefault()
  // check if form is valid, here


  // ##### Notifying the User

//  There are a number of ways to do this. Here are a few ideas.

  //* Create an unordered list, listing the fields the user has left empty, and insert it into the document.
  //* Add elements to the page, notifying the user which fields are missing. A pre-styled class exists if you wish to take this route. `<div class="error">your error message, here.</div>`
  //* Add a red border around the field that was left empty.
