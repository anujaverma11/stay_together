var NewUserForm = React.createClass({
  getInitialState: function() {
    return {user: null}
  },

  _handleSubmit: function(event) {
    event.preventDefault();
    var firstname = this.state.firstname;
    var lastname = this.state.lastname;
    var dateofbirth = this.state.dateofbirth;
    var email = this.state.email;
    var password = this.state.password;
    var passwordConfirm = this.state.passwordConfirm;
    var phonenumber = this.state.phonenumber;
    var placeofbirth = this.state.placeofbirth;
    var gender = this.state.gender;

    var spouseId = this.refs.spouseSelector.state.value;
    var parentId = this.refs.parentSelector.state.value;
    var data = { user: {parent_id: parentId, spouse_id: spouseId, first_name: firstname, last_name: lastname, date_of_birth: dateofbirth, email: email, password_hash: password, password_salt: passwordConfirm, phone_number: phonenumber, place_of_birth: placeofbirth, gender: gender} }

    $.ajax({
      url: '/users',
      type: 'post',
      dataType: 'json',
      data: data,
      success: this.props.onSuccess,
      error: function(data) {
        console.log(data)
        console.error('there was a problem sending the user data to the server');
      }.bind(this)
    });
  },

  clearForm: function() {
    this.refs.parentId.clear()
    this.refs.playerSelector.clear()
    this.setState({user: null})
  },

  _handleChange: function(event) {
    this.setState({user: event.target.value})
  },

  render: function() {
    return (
      <form onSubmit={this._handleSubmit}>
        <div className="input-group">
          <input type="text" value={this.state.firstname} onChange={this._handleChange} className="form-control" placeholder="First name" aria-describedby="basic-addon1" />
        </div>
        <div className="input-group">
          <input type="text" value={this.state.lastname} onChange={this._handleChange} className="form-control" placeholder="Last name" aria-describedby="basic-addon1" />
        </div>
        <div className="input-group">
          <input type="text" value={this.state.dateofbirth} onChange={this._handleChange} className="form-control" placeholder="Date of Birth" aria-describedby="basic-addon1" />
        </div>
        <div className="input-group">
          <input type="text" value={this.state.placeofbirth} onChange={this._handleChange} className="form-control" placeholder="Place of Birth" aria-describedby="basic-addon1" />
        </div>
        <div className="input-group">
          <input type="text" value={this.state.phonenumber} onChange={this._handleChange} className="form-control" placeholder="Phone Number" aria-describedby="basic-addon1" />
        </div>
        <div className="input-group">
          <input type="text" value={this.state.gender} onChange={this._handleChange} className="form-control" placeholder="Gender" aria-describedby="basic-addon1" />
        </div>
        <div className="input-group">
          <input type="text" value={this.state.email} onChange={this._handleChange} className="form-control" placeholder="Email" aria-describedby="basic-addon1" />
        </div>

        <div className="row">
          <div className= "small-9 small-centered columns">
            <h2>select parent</h2>
            <RelationshipSelector ref="parentSelector" />
          </div>
        </div>
        <p> or </p>
        <div className="row">
          <div className= "small-9 small-centered columns">
            <h2>select spouse</h2>
            <RelationshipSelector ref="spouseSelector" />
          </div>
        </div>

        <div className="input-group">
          <input type="text" value={this.state.password} onChange={this._handleChange} className="form-control" placeholder="Password" aria-describedby="basic-addon1" />
        </div>
        <div className="input-group">
          <input type="text" value={this.state.confirmPassword} onChange={this._handleChange} className="form-control" placeholder="Confirm Password" aria-describedby="basic-addon1" />
        </div>
        <div>
          <button type="submit" className="btn btn-default">Submit</button>
        </div>
      </form>
    )
  }

});