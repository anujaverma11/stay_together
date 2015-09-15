var RelationshipSelector = React.createClass ({

  getInitialState: function() {
    return {
      users: [],
      value: null,
    };
  },

  clear: function() {
    this.setState({ value: null })
  },

  _handleChange: function (event) {
    this.setState({value: event.target.value});
  },

  componentDidMount: function() {
    $.ajax({
      url: '/users',
      type: 'get',
      dataType: 'json',
      success: function(users) {
        this.setState({users: users});
      }.bind(this),
      error: function(data) {
        console.log(data)
        console.error('there was a problem getting the users');
      }.bind(this)
    });
  },

  render: function() {
    var user_options = this.state.users.map(function (user) {
        return <option value={user.id} key={user.id}>{user.first_name}</option>
    })
    return(
      <select className="radius" ref="user" value={this.state.value} onChange={this._handleChange}>
      <option selected={this.state.value == null}>select a user</option>
        {user_options}
      </select>
    );
  }

});
