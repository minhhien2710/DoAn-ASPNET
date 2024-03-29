﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="GUI.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đăng nhập - H2SHOP</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="wrapper-breadcrums">
        <div class="container">
            <div class="row">
                <div class="col-sm-24">
                    <div class="breadcrumbs">
                        <ul>
                            <li class="home"> <a href="index.html" title="Go to Home Page"><span >Home</span></a> <span class="separator">/ </span>
                            </li>
                            <li class="cms_page"> <strong>Login</strong>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- /.wrapper-breadcrums -->
        <div class="em-wrapper-main">
            <div class="container container-main">
                <div class="em-inner-main">
                    <div class="em-wrapper-area02"></div>
                    <div class="em-main-container em-col1-layout">
                        <div class="row">
                            <div class="em-col-main col-sm-24">
                                <div class="account-login">
                                    <div class="page-title em-box-02">
                                        <div class="title-box">
                                            <h1>Login or Create an Account</h1>
                                        </div>
                                    </div>
                                        <input name="form_key" type="hidden" value="W2ZAZqxDCT2TpZYs" />
                                        <div class="col2-set">
                                            <div class="col-1 new-users">
                                                <div class="content">
                                                    <h2>New Customers</h2>
                                                    <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
                                                </div>
                                                <div class="buttons-set">
                                                    <asp:Button ID="btnCreate" CssClass="btn btn-danger" runat="server" Text="Create an Account" OnClick="btnCreate_Click" />
                                                </div>
                                            </div>
                                            <div class="col-2 registered-users">
                                                <div class="content">
                                                    <h2>Registered Customers</h2>
                                                    <p>If you have an account with us, please log in.</p>
                                                    <ul class="form-list">
                                                        <li>
                                                            <label for="email" class="required"><em>*</em>Email Address</label>
                                                            <div class="input-box">
                                                                <asp:TextBox ID="txtTenTK" runat="server" name="login[username]" value="" class="input-text required-entry validate-email" title="Email Address" />
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <label for="pass" class="required"><em>*</em>Password</label>
                                                            <div class="input-box">
                                                                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" name="login[password]" class="input-text required-entry validate-password" title="Password" />
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <div id="window-overlay" class="window-overlay" style="display: none;"></div>
                                                    <div id="remember-me-popup" class="remember-me-popup" style="display: none;">
                                                        <div class="remember-me-popup-head">
                                                            <h3>What's this?</h3>
                                                            <a href="#" class="remember-me-popup-close" title="Close">Close</a>
                                                        </div>
                                                        <div class="remember-me-popup-body">
                                                            <p>Checking &quot;Remember Me&quot; will let you access your shopping cart on this computer when you are logged out</p>
                                                            <div class="remember-me-popup-close-button a-right">
                                                                <a href="#" class="remember-me-popup-close button" title="Close"><span>Close</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="buttons-set">
                                                    <asp:Button ID="btnDangNhap" CssClass="btn btn-danger" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
                                                    <!--<button type="submit" class="button" title="Login" name="send" id="send2">
                                                        <span><span>Login</span></span>
                                                    </button>
                                                    <a href="#" class="f-left">Forgot Your Password?</a>
                                                    <p class="required">* Required Fields</p>-->
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- /.account-login -->
                                </div>
                            </div>
                        </div>
                    </div>
                
            </div><!-- /.em-wrapper-main -->
    </div>
</asp:Content>
