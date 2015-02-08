<%--
  Created by IntelliJ IDEA.
  User: jinwoo
  Date: 2015-01-23
  Time: 오후 6:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<body>
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form action="/login" method="post">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h3 class="modal-title" id="loginModalLabel">로그인</h3>
        </div>
        <div class="modal-body">
          <label for="email">이메일</label>
          <input class="form-control" type="email" id="email" name="email" />
          <label for="password" class="label-top">비밀번호</label>
          <input class="form-control" type="password" id="password" name="password" />
          <div class="checkbox pull-right">
            <label class="label-top">
              <input type="checkbox" name="remember"><span style="font-weight: bold;">로그인 상태 유지</span>
            </label>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary pull-left" id="registerBtn">회원가입</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">취소</button>
          <button type="submit" class="btn btn-primary">로그인</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
    $('#registerBtn').click(function() {
        $('#registerModal').modal({
            keyboard:false,
            backdrop:false,
            show:true
        })
    })
</script>

<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form action="/register" method="post">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h3 class="modal-title" id="registerModalLabel">회원가입</h3>
        </div>
        <div class="modal-body">
          <label for="regEmail">이메일</label>
          <input class="form-control" type="email" id="regEmail" name="email" />
          <label for="regPassword" class="label-top">비밀번호</label>
          <input class="form-control" type="password" id="regPassword" name="password" />
          <label for="regRePassword" class="label-top">비밀번호</label>
          <input class="form-control" type="password" id="regRePassword" name="rePassword" />
          <label for="regName" class="label-top">이름</label>
          <input class="form-control" type="text" id="regName" name="name" />
          <label for="regTel" class="label-top">전화번호</label>
          <input class="form-control" type="tel" id="regTel" name="tel" />
          <label for="regBirthday" class="label-top">생년월일</label>
          <input class="form-control" type="text" id="regBirthday" name="birthday" />
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">취소</button>
          <button type="submit" class="btn btn-primary">가입</button>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
  $(document).ready(function() {
    $('#registerModal').on('show.bs.modal', function() {
      $('#loginModal').modal('hide');
    })

    $('#regBirthday').datepicker({
        dateFormat:'yy-mm-dd',
        yearRange: 'c-100:c+0',
        changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
        changeYear: true // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
    });
  })

  var regx = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}$/;
  $('#regPassword, #regRePassword').focusout(function() {
    if(!regx.test($(this).val())) {
      $(this).inputChk();
    } else {
      $(this).inputSuccess();
    };
  })

  $.fn.inputChk = function() {
    $(this).prev().find('span').remove();
    var span = $('<span>').css({'color':'red'}).html('&nbsp;(' +$(this).prev().text()+'는 숫자+문자+특수문자 조합으로 해주세요.)')
    $(this).css('border', '4px dotted  red');
    $(this).prev().append(span);
  }

  $.fn.inputSuccess = function() {
    $(this).prev().find('span').remove();
    $(this).css('border', '2px solid #cccccc');
  }


</script>
</body>
</html>
