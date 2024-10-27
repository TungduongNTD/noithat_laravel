@extends('master')
@section('content')
<style>
.login-container .page-container {
  padding-top: 40px;
  border: 1px solid #ccc;
}
.login-form {
  width: 320px;
  margin: auto;
}
.thumb {
  margin: 0 auto 20px;
}
@media (max-width: 480px) {
  .login-form, .registration-form {
    width: 100%;
  }
}
.nav-tabs.nav-justified {
  margin-bottom: 0;
}
.nav-tabs.nav-justified > li > a {
  border-top: 0!important;
  padding: 0 15px;
  background-color: #f5f5f5;
}
.nav-tabs.nav-justified > li:first-child > a {
  border-radius: 3px 0 0 0;
}
.nav-tabs.nav-justified > li:last-child > a {
  border-radius: 0 3px 0 0;
}
.nav-tabs.nav-justified > li.active > a {
  background-color: transparent;
}
@media (max-width: 768px) {
  .nav-tabs.nav-justified {
    padding: 0;
    border-width: 0 0 1px 0;
    border-radius: 0;
  }
}
.footer {
  left: 0;
  right: 0;
}
@media (max-width: 768px) {
  .login-options, .login-options .text-right {
    text-align: center;
  }
}
.icon-object {
  border-radius: 50%;
  text-align: center;
  margin: 10px;
  border: 3px solid;
  padding: 20px;
  display: inline-block;
}
.icon-object > i {
  font-size: 32px;
}
</style>

<!-- BREADCRUMB -->
<div id="breadcrumb">
  <div class="container">
    <ul class="breadcrumb">
      <li><a href="{{ url('index') }}">Home</a></li>
      <li class="active"><a href="{{ url('dang-nhap') }}">ĐĂNG NHẬP TÀI KHOẢN</a></li>
    </ul>
  </div>
</div>

<!-- LOGIN FORM -->
<div class="login-container">
  <div class="page-container">
    <div class="page-content">
      <div class="content-wrapper">
        <div class="content">
          <form action="{{ route('login') }}" method="post">
            @csrf
            <div class="panel panel-body login-form" style="border: 1px solid #ccc; width: 400px; margin: auto; height: 500px; margin-top: 20px;">
              @if(Session::has('flag'))
                <div class="alert alert-{{ Session::get('flag') }}">{{ Session::get('message') }}</div>
              @endif
              <div class="text-center">
                <div class="icon-object border-slate-300 text-slate-300"><i class="icon-reading"></i></div>
                <h5 class="content-group">Đăng Nhập Tài Khoản Của Bạn</h5>
                <small class="display-block">Nhập Thông Tin Đăng Nhập Của Bạn ở Dưới Đây</small>
              </div>
              <div class="form-group has-feedback has-feedback-left">
                <label>Email</label>
                <input type="email" name="email" class="form-control" placeholder="Username">
                <div class="form-control-feedback">
                  <i class="icon-user text-muted"></i>
                </div>
              </div>
              <br>
              <div class="form-group has-feedback has-feedback-left">
                <label>Password</label>
                <input type="password" name="password" class="form-control" placeholder="Password">
                <div class="form-control-feedback">
                  <i class="icon-lock2 text-muted"></i>
                </div>
              </div>
              <br>
              <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Sign In <i class="icon-circle-right2 position-right"></i></button>
              </div>
              <div class="text-center">
                <a href="{{ url('login_password_recover') }}">Forgot password?</a>
              </div>
            </div>
          </form>

          <!-- Footer -->
          <div class="footer text-muted text-center">
            &copy; 2015. <a href="#">Limitless Web App Kit</a> by <a href="http://themeforest.net/user/Kopyov" target="_blank">Eugene Kopyov</a>
          </div>
          <!-- /footer -->
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
