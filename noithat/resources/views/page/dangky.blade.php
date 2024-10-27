@extends('master')

@section('content')
<style>
    .login-container .page-container {
        padding-top: 40px;
        border: 1px solid #ccc;
    }

    .login-form {
        width: 100%;
        max-width: 400px;
        margin: 20px auto;
    }

    .form-control-feedback {
        position: absolute;
        right: 15px;
        top: 14px;
        pointer-events: none;
    }

    .icon-object {
        border-radius: 50%;
        text-align: center;
        margin: 10px;
        border-width: 3px;
        border-style: solid;
        padding: 20px;
        display: inline-block;
    }

    .icon-object > i {
        font-size: 32px;
        top: 0;
    }

    @media (max-width: 768px) {
        .login-form {
            width: 100%;
            padding: 0 15px;
        }
    }
</style>

<!-- BREADCRUMB -->
<div id="breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="http://localhost/noithat/public/index">Home</a></li>
            <li class="active"><a href="http://localhost/noithat/public/dang-ky">ĐĂNG KÝ TÀI KHOẢN</a></li>
        </ul>
    </div>
</div>
<!-- /BREADCRUMB -->

<div class="login-container">
    <div class="page-container">

        <div class="page-content">
            <div class="content-wrapper">
                <div class="content">

                    <!-- Simple login form -->
                    <form action="{{ route('sigin') }}" method="post" class="login-form">
                        @csrf <!-- This is a Blade directive for CSRF token -->
                        
                        @if($errors->any())
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $err)
                                    {{ $err }} <br>
                                @endforeach
                            </div>
                        @endif

                        @if(Session::has('thanhcong'))
                            <div class="alert alert-success">{{ Session::get('thanhcong') }}</div>
                        @endif

                        <div class="text-center">
                            <div class="icon-object border-slate-300 text-slate-300">
                                <i class="icon-reading"></i>
                            </div>
                            <h5 class="content-group">Đăng Ký Tài Khoản Của Bạn</h5>
                            <small class="display-block">Nhập Thông Tin Đăng Ký Của Bạn ở Dưới Đây</small>
                        </div>

                        <div class="form-group has-feedback">
                            <input type="email" name="email" class="form-control" placeholder="Email" required>
                            <div class="form-control-feedback">
                                <i class="icon-envelop text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group has-feedback">
                            <input type="text" name="fullname" class="form-control" placeholder="Fullname" required>
                            <div class="form-control-feedback">
                                <i class="icon-user text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group has-feedback">
                            <input type="text" name="address" class="form-control" placeholder="Address" required>
                        </div>

                        <div class="form-group has-feedback">
                            <input type="text" name="phone" class="form-control" placeholder="Phone Number" required>
                        </div>

                        <div class="form-group has-feedback">
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                            <div class="form-control-feedback">
                                <i class="icon-lock2 text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group has-feedback">
                            <input type="password" name="re_password" class="form-control" placeholder="Re Password" required>
                            <div class="form-control-feedback">
                                <i class="icon-lock2 text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Sign Up <i class="icon-circle-right2 position-right"></i></button>
                        </div>
                    </form>
                    <!-- /simple login form -->

                    <!-- Footer -->
                    <div class="footer text-muted text-center">
                        &copy; 2015. <a href="#">Limitless Web App Kit</a> by <a href="http://themeforest.net/user/Kopyov" target="_blank">Eugene Kopyov</a>
                    </div>
                    <!-- /footer -->

                </div>
                <!-- /content area -->

            </div>
            <!-- /main content -->

        </div>
        <!-- /page content -->

    </div>
    <!-- /page container -->
</div>
@endsection
