var UsersList = React.createClass({
  getInitialState: function() {
    return { users: this.props.initialLists };
},

render: function() {
  var users = this.state.users.map(function(user) {
    return <User key={user.id} user={user} />;
});

  return (
      <div className="users">
      {users}
      </div>
      );
}
});