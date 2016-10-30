app.controller('ContactsCtrl', ['Message', 'action', function(Message, action) {
  var ctrl = this;

  action('new', function(){
    ctrl.message = Message.new();
    ctrl.save = Message.create;
  });
}])
