$(document).ready(function () {
  $('#Loginform').submit(function() {
    //prevent submit automatically
    event.preventDefault();

    //get id, pwd
    var id = $("#id").val();
    var pwd = $("id").val();
    console.log(id, pwd);

    //transmit data to sever as post
    $.post("http://httpbin.org/post",
            {"id" : id, "pwd" :pwd},
            function(data) {
              //alert(data.form.id + '님 로그인 되었습니다.');
              var myModal = $('#myModal');
              myModal.modal();
              myModal.find('.modal-body').text(data.form.id + '님 로그인 되었습니다');
            });

  })
});

$(document).ready(function () {
  $('#signupform').submit(function() {
    //prevent submit automatically
    event.preventDefault();

    //get id, pwd
    var name = $("#name").val();
    console.log(name);

    //transmit data to sever as post
    $.post("http://httpbin.org/post",
            {"name" : name},
            function(data) {
              //alert(data.form.id + '님 로그인 되었습니다.');
              var myModal = $('#myModal');
              myModal.modal();
              myModal.find('.modal-body').text(data.form.name + '님 회원가입 되었습니다');
            });

  })
});
