<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="GUI.DangKi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            <li class="cms_page"> <strong>Register</strong>
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
                            <div class="account-create">
                                <div class="page-title">
                                    <h1>Create an Account</h1>
                                </div>
                                    <div class="fieldset">
                                        <input type="hidden" name="success_url" value="" />
                                        <input type="hidden" name="error_url" value="" />
                                        <h2 class="legend">Personal Information</h2>
                                        <ul class="form-list">
                                            <li class="fields">
                                                <div class="customer-name-middlename">
                                                    <div class="field name-firstname">
                                                        <label for="AccountName" class="required"><em>*</em>Account Name</label>
                                                        <div class="input-box"> 
                                                            <asp:TextBox ID="txtTenTK" runat="server" title="Account Name" maxlength="255" class="input-text required-entry"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="field name-middlename">
                                                        <label for="Fullname">Full Name</label>
                                                        <div class="input-box">                       
                                                            <asp:TextBox ID="txtHoTen" runat="server" title="Full Name" class="input-text "></asp:TextBox> 
                                                        </div>
                                                    </div>
                                                    <div class="field name-lastname">
                                                        <label for="Phone" class="required"><em>*</em>Number Phone</label>
                                                        <div class="input-box">
                                                            <asp:TextBox ID="txtSDT" runat="server" TextMode="Phone" title="Number Phone" maxlength="10" class="input-text required-entry"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="field name-middlename">
                                                        <label for="address">Address</label>
                                                        <div class="input-box">
                                                            <asp:TextBox ID="txtDiaChi" runat="server" title="Address" class="input-text "></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <label for="email_address" class="required"><em>*</em>Email Address</label>
                                                <div class="input-box">
                                                    <asp:TextBox ID="txtEmail" runat="server" title="Email Address" class="input-text validate-email required-entry"></asp:TextBox>
                                                </div>
                                            </li>
                                            <li class="control">
                                                <div class="input-box">
                                                    <input type="checkbox" name="is_subscribed" title="Sign Up for Newsletter" value="1" id="is_subscribed" class="checkbox" />
                                                </div>
                                                <label for="is_subscribed">Sign Up for Newsletter</label>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="fieldset">
                                        <h2 class="legend">Login Information</h2>
                                        <ul class="form-list">
                                            <li class="fields">
                                                <div class="field">
                                                    <label for="password" class="required"><em>*</em>Password</label>
                                                    <div class="input-box">
                                                        <asp:TextBox ID="txtMK" runat="server" title="Password" class="input-text required-entry validate-password" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="field">
                                                    <label for="confirmation" class="required"><em>*</em>Confirm Password</label>
                                                    <div class="input-box">
                                                        <asp:TextBox ID="txtCP" runat="server" title="Confirm Password" class="input-text required-entry validate-password" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div id="window-overlay" class="window-overlay" style="display:none;"></div>
                                        <div id="remember-me-popup" class="remember-me-popup" style="display:none;">
                                            <div class="remember-me-popup-head">
                                                <h3>What's this?</h3> <a href="#" class="remember-me-popup-close" title="Close">Close</a>
                                            </div>
                                            <div class="remember-me-popup-body">
                                                <p>Checking &quot;Remember Me&quot; will let you access your shopping cart on this computer when you are logged out</p>
                                                <div class="remember-me-popup-close-button a-right"> <a href="#" class="remember-me-popup-close button" title="Close"><span>Close</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="buttons-set">
                                            <p class="back-link"><a href="SanPham.aspx" class="back-link"><small>&laquo; </small>Back</a>
                                            </p>
                                            <asp:Button ID="btnDangKi" CssClass="btn btn-danger" runat="server" Text="Submit" OnClick="btnDangKi_Click" />
                                            <p class="required">* Required Fields</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.em-wrapper-main -->
</asp:Content>
