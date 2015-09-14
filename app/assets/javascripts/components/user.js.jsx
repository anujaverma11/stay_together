var User = React.createClass({
  render: function() {
    console.log('User component rendering with', this.props.user)
    return (
      <div className="user">
      <UserHeader user={this.props.user} />
      </div>
      );
}
});


var UserHeader = React.createClass({
  render: function() {
    var user = this.props.user;
    var picture = user.pictures[0];
    var imgSrc = picture ? picture.link : null;
    var userHref = "/users/"+user.id;
    return (
      <div className="col-sm-6 col-md-4">
        <div className="thumbnail">
           <img src={imgSrc} height="100" width="100"/>
              <div className="caption">
                <h3>{user.first_name}</h3>
                <p>{user.email}</p>
                <a href={userHref}>My Page</a>
              </div>
        </div>
      </div>
    );
  }
});