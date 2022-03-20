<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addproductpage.aspx.cs" Inherits="saleman.Addproductpage" MasterPageFile="~/secondarymasterpage.Master" enableEventValidation="false" %>


<asp:Content ID="addproduct1234" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<body style="height: 693px">--%>
        <div class="auto-style1">
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td classTitless:>Title :</td>
                    <td>
                        <asp:TextBox ID="title" value="" name="title" runat="server" required="" Width="800px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title" ErrorMessage="Please Add A title" Font-Bold="True" ForeColor="Red">Please Add A title</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
							<i class="fa fa-envelope" aria-hidden="true">
                                <asp:Label ID="zzz" runat="server" Text="Description : "></asp:Label>
                                
                            </i>
                       

                    </td>
                    <td>
                            <asp:TextBox ID="description" name="description" runat="server" required="" Height="158px" Width="800px" ></asp:TextBox>
							</td>
                </tr>
                <tr>
                    <td class="auto-style5">category:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="category" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="id_category">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [category_name], [id_category] FROM [category]"></asp:SqlDataSource>
							
                </tr>
                <tr>
                    <td class="auto-style5">Format:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="Format" runat="server" OnSelectedIndexChanged="Format_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Selected="True" Value="Fixed_Price">Fixed Price</asp:ListItem>
                            <asp:ListItem>Auction</asp:ListItem>
                        </asp:DropDownList>
                        <i class="fa fa-lock" aria-hidden="true"></i>
							
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Duraionlabel" runat="server" Text="Duraion" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="auctiondays" runat="server" type="auctiondays" Visible="False">
                            <asp:ListItem Value="1">1 day</asp:ListItem>
                            <asp:ListItem Value="3">3 days</asp:ListItem>
                            <asp:ListItem Value="5">5 days</asp:ListItem>
                            <asp:ListItem Selected="True" Value="7">7 days</asp:ListItem>
                            <asp:ListItem Value="10">10 days</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Price:</td>
                    <td class="auto-style8"><i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox ID="order_price" value="" name="order price" runat="server" required="" Width="150px" TextMode="Number"></asp:TextBox>
							ILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="order_price" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please Add A Price</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="height: 25px">
                        <asp:Label ID="Quantitylabel" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="auto-style10" style="height: 25px"><div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox ID="Quantity" value="" name="Quantity" runat="server" required="" Width="150px" TextMode="Number"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Quantity" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please Add A Quantity</asp:RequiredFieldValidator>
                        </div></td>
                </tr>
                <tr>
                    <td class="auto-style4">Ship With:</td>
                    <td><div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox ID="shipwith" value="" name="shipwith" runat="server" required="" Width="150px" ></asp:TextBox>
							
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="shipwith" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please Add A Shipwith</asp:RequiredFieldValidator>
							
						</div></td>
                </tr>
                <tr>
                    <td class="auto-style4">weight</td>
                    <td><div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox ID="product_weight" value="" name="Product Weight" runat="server" required="" Width="150px" TextMode="Number"></asp:TextBox>
							
						    KG&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="product_weight" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please Add An order Weight</asp:RequiredFieldValidator>
                        </div></td>
                </tr>
                <tr>
                    <td class="auto-style4">Local Shipping Price:
                    </td>
                    <td><div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox ID="Local_price" value="" name="Local price" runat="server" required="" Width="150px" TextMode="Number"></asp:TextBox>
						    ILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Local_price" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please Add A Price Shipping Local</asp:RequiredFieldValidator>
						</div></td>
                </tr>
                <tr>
                    <td class="auto-style4">International Shipping Price:</td>
                    <td><div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox ID="inter_price" value="" name="Inter price" runat="server" required="" Width="150px" TextMode="Number"></asp:TextBox>
						    ILS&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inter_price" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please Add An Internatinal Shipping Price</asp:RequiredFieldValidator>
						</div></td>
                </tr>
                <tr>
                    <td class="auto-style14">Photos:</td>
                    <td class="auto-style15"><table class="nav-justified">
                            <tr>
                                <td style="height: 22px">
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="443px" onblur="if (this.value == '') {this.value = 'null';}"/>
                                &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please Add minimum 1 image</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 28px">
                                    <asp:FileUpload ID="FileUpload2" runat="server" Width="443px" onblur="if (this.value == '') {this.value = 'null';}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:FileUpload ID="FileUpload3" runat="server" Width="443px" onblur="if (this.value == '') {this.value = 'null';}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:FileUpload ID="FileUpload4" runat="server" Width="443px" onblur="if (this.value == '') {this.value = 'null';}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:FileUpload ID="FileUpload5" runat="server" Width="443px" onblur="if (this.value == '') {this.value = 'null';}"/>
                                </td>
                            </tr>
                        </table>
						<br />
						<br />
        <asp:Label ID="StatusLabel" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Payment options</td>
                    <td>
                        <asp:CheckBox ID="PayPal" runat="server" Text="PayPal" />
                        <br />
                        <asp:CheckBox ID="Creditcard" runat="server" Text="Credit card" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Location:</td>
                    <td>
                        <asp:DropDownList ID="Loacation" runat="server">
                            <asp:ListItem Value="" Selected="True">Select Country</asp:ListItem>
<asp:ListItem Value="AF">Afghanistan</asp:ListItem>
<asp:ListItem Value="AL">Albania</asp:ListItem>
<asp:ListItem Value="DZ">Algeria</asp:ListItem>
<asp:ListItem Value="AS">American Samoa</asp:ListItem>
<asp:ListItem Value="AD">Andorra</asp:ListItem>
<asp:ListItem Value="AO">Angola</asp:ListItem>
<asp:ListItem Value="AI">Anguilla</asp:ListItem>
<asp:ListItem Value="AQ">Antarctica</asp:ListItem>
<asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>
<asp:ListItem Value="AR">Argentina</asp:ListItem>
<asp:ListItem Value="AM">Armenia</asp:ListItem>
<asp:ListItem Value="AW">Aruba</asp:ListItem>
<asp:ListItem Value="AU">Australia</asp:ListItem>
<asp:ListItem Value="AT">Austria</asp:ListItem>
<asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
<asp:ListItem Value="BS">Bahamas</asp:ListItem>
<asp:ListItem Value="BH">Bahrain</asp:ListItem>
<asp:ListItem Value="BD">Bangladesh</asp:ListItem>
<asp:ListItem Value="BB">Barbados</asp:ListItem>
<asp:ListItem Value="BY">Belarus</asp:ListItem>
<asp:ListItem Value="BE">Belgium</asp:ListItem>
<asp:ListItem Value="BZ">Belize</asp:ListItem>
<asp:ListItem Value="BJ">Benin</asp:ListItem>
<asp:ListItem Value="BM">Bermuda</asp:ListItem>
<asp:ListItem Value="BT">Bhutan</asp:ListItem>
<asp:ListItem Value="BO">Bolivia</asp:ListItem>
<asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>
<asp:ListItem Value="BW">Botswana</asp:ListItem>
<asp:ListItem Value="BV">Bouvet Island</asp:ListItem>
<asp:ListItem Value="BR">Brazil</asp:ListItem>
<asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>
<asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>
<asp:ListItem Value="BG">Bulgaria</asp:ListItem>
<asp:ListItem Value="BF">Burkina Faso</asp:ListItem>
<asp:ListItem Value="BI">Burundi</asp:ListItem>
<asp:ListItem Value="KH">Cambodia</asp:ListItem>
<asp:ListItem Value="CM">Cameroon</asp:ListItem>
<asp:ListItem Value="CA">Canada</asp:ListItem>
<asp:ListItem Value="CV">Cape Verde</asp:ListItem>
<asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
<asp:ListItem Value="CF">Central African Republic</asp:ListItem>
<asp:ListItem Value="TD">Chad</asp:ListItem>
<asp:ListItem Value="CL">Chile</asp:ListItem>
<asp:ListItem Value="CN">China</asp:ListItem>
<asp:ListItem Value="CX">Christmas Island</asp:ListItem>
<asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
<asp:ListItem Value="CO">Colombia</asp:ListItem>
<asp:ListItem Value="KM">Comoros</asp:ListItem>
<asp:ListItem Value="CG">Congo</asp:ListItem>
<asp:ListItem Value="CK">Cook Islands</asp:ListItem>
<asp:ListItem Value="CR">Costa Rica</asp:ListItem>
<asp:ListItem Value="CI">Cote D'Ivoire</asp:ListItem>
<asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>
<asp:ListItem Value="CU">Cuba</asp:ListItem>
<asp:ListItem Value="CY">Cyprus</asp:ListItem>
<asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
<asp:ListItem Value="DK">Denmark</asp:ListItem>
<asp:ListItem Value="DJ">Djibouti</asp:ListItem>
<asp:ListItem Value="DM">Dominica</asp:ListItem>
<asp:ListItem Value="DO">Dominican Republic</asp:ListItem>
<asp:ListItem Value="TP">East Timor</asp:ListItem>
<asp:ListItem Value="EC">Ecuador</asp:ListItem>
<asp:ListItem Value="EG">Egypt</asp:ListItem>
<asp:ListItem Value="SV">El Salvador</asp:ListItem>
<asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>
<asp:ListItem Value="ER">Eritrea</asp:ListItem>
<asp:ListItem Value="EE">Estonia</asp:ListItem>
<asp:ListItem Value="ET">Ethiopia</asp:ListItem>
<asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>
<asp:ListItem Value="FO">Faroe Islands</asp:ListItem>
<asp:ListItem Value="FJ">Fiji</asp:ListItem>
<asp:ListItem Value="FI">Finland</asp:ListItem>
<asp:ListItem Value="FR">France</asp:ListItem>
<asp:ListItem Value="GF">French Guiana</asp:ListItem>
<asp:ListItem Value="PF">French Polynesia</asp:ListItem>
<asp:ListItem Value="TF">French Southern Territories</asp:ListItem>
<asp:ListItem Value="GA">Gabon</asp:ListItem>
<asp:ListItem Value="GM">Gambia</asp:ListItem>
<asp:ListItem Value="GE">Georgia</asp:ListItem>
<asp:ListItem Value="DE">Germany</asp:ListItem>
<asp:ListItem Value="GH">Ghana</asp:ListItem>
<asp:ListItem Value="GI">Gibraltar</asp:ListItem>
<asp:ListItem Value="GR">Greece</asp:ListItem>
<asp:ListItem Value="GL">Greenland</asp:ListItem>
<asp:ListItem Value="GD">Grenada</asp:ListItem>
<asp:ListItem Value="GP">Guadeloupe</asp:ListItem>
<asp:ListItem Value="GU">Guam</asp:ListItem>
<asp:ListItem Value="GT">Guatemala</asp:ListItem>
<asp:ListItem Value="GN">Guinea</asp:ListItem>
<asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>
<asp:ListItem Value="GY">Guyana</asp:ListItem>
<asp:ListItem Value="HT">Haiti</asp:ListItem>
<asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>
<asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>
<asp:ListItem Value="HN">Honduras</asp:ListItem>
<asp:ListItem Value="HK">Hong Kong</asp:ListItem>
<asp:ListItem Value="HU">Hungary</asp:ListItem>
<asp:ListItem Value="IS">Icel And</asp:ListItem>
<asp:ListItem Value="IN">India</asp:ListItem>
<asp:ListItem Value="ID">Indonesia</asp:ListItem>
<asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>
<asp:ListItem Value="IQ">Iraq</asp:ListItem>
<asp:ListItem Value="IE">Ireland</asp:ListItem>
<asp:ListItem Value="IL">Israel</asp:ListItem>
<asp:ListItem Value="IT">Italy</asp:ListItem>
<asp:ListItem Value="JM">Jamaica</asp:ListItem>
<asp:ListItem Value="JP">Japan</asp:ListItem>
<asp:ListItem Value="JO">Jordan</asp:ListItem>
<asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
<asp:ListItem Value="KE">Kenya</asp:ListItem>
<asp:ListItem Value="KI">Kiribati</asp:ListItem>
<asp:ListItem Value="KP">Korea, Dem People'S Republic</asp:ListItem>
<asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>
<asp:ListItem Value="KW">Kuwait</asp:ListItem>
<asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>
<asp:ListItem Value="LA">Lao People'S Dem Republic</asp:ListItem>
<asp:ListItem Value="LV">Latvia</asp:ListItem>
<asp:ListItem Value="LB">Lebanon</asp:ListItem>
<asp:ListItem Value="LS">Lesotho</asp:ListItem>
<asp:ListItem Value="LR">Liberia</asp:ListItem>
<asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>
<asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
<asp:ListItem Value="LT">Lithuania</asp:ListItem>
<asp:ListItem Value="LU">Luxembourg</asp:ListItem>
<asp:ListItem Value="MO">Macau</asp:ListItem>
<asp:ListItem Value="MK">Macedonia</asp:ListItem>
<asp:ListItem Value="MG">Madagascar</asp:ListItem>
<asp:ListItem Value="MW">Malawi</asp:ListItem>
<asp:ListItem Value="MY">Malaysia</asp:ListItem>
<asp:ListItem Value="MV">Maldives</asp:ListItem>
<asp:ListItem Value="ML">Mali</asp:ListItem>
<asp:ListItem Value="MT">Malta</asp:ListItem>
<asp:ListItem Value="MH">Marshall Islands</asp:ListItem>
<asp:ListItem Value="MQ">Martinique</asp:ListItem>
<asp:ListItem Value="MR">Mauritania</asp:ListItem>
<asp:ListItem Value="MU">Mauritius</asp:ListItem>
<asp:ListItem Value="YT">Mayotte</asp:ListItem>
<asp:ListItem Value="MX">Mexico</asp:ListItem>
<asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>
<asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>
<asp:ListItem Value="MC">Monaco</asp:ListItem>
<asp:ListItem Value="MN">Mongolia</asp:ListItem>
<asp:ListItem Value="MS">Montserrat</asp:ListItem>
<asp:ListItem Value="MA">Morocco</asp:ListItem>
<asp:ListItem Value="MZ">Mozambique</asp:ListItem>
<asp:ListItem Value="MM">Myanmar</asp:ListItem>
<asp:ListItem Value="NA">Namibia</asp:ListItem>
<asp:ListItem Value="NR">Nauru</asp:ListItem>
<asp:ListItem Value="NP">Nepal</asp:ListItem>
<asp:ListItem Value="NL">Netherlands</asp:ListItem>
<asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>
<asp:ListItem Value="NC">New Caledonia</asp:ListItem>
<asp:ListItem Value="NZ">New Zealand</asp:ListItem>
<asp:ListItem Value="NI">Nicaragua</asp:ListItem>
<asp:ListItem Value="NE">Niger</asp:ListItem>
<asp:ListItem Value="NG">Nigeria</asp:ListItem>
<asp:ListItem Value="NU">Niue</asp:ListItem>
<asp:ListItem Value="NF">Norfolk Island</asp:ListItem>
<asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>
<asp:ListItem Value="NO">Norway</asp:ListItem>
<asp:ListItem Value="OM">Oman</asp:ListItem>
<asp:ListItem Value="PK">Pakistan</asp:ListItem>
<asp:ListItem Value="PW">Palau</asp:ListItem>
<asp:ListItem Value="PA">Panama</asp:ListItem>
<asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>
<asp:ListItem Value="PY">Paraguay</asp:ListItem>
<asp:ListItem Value="PE">Peru</asp:ListItem>
<asp:ListItem Value="PH">Philippines</asp:ListItem>
<asp:ListItem Value="PN">Pitcairn</asp:ListItem>
<asp:ListItem Value="PL">Poland</asp:ListItem>
<asp:ListItem Value="PT">Portugal</asp:ListItem>
<asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
<asp:ListItem Value="QA">Qatar</asp:ListItem>
<asp:ListItem Value="RE">Reunion</asp:ListItem>
<asp:ListItem Value="RO">Romania</asp:ListItem>
<asp:ListItem Value="RU">Russian Federation</asp:ListItem>
<asp:ListItem Value="RW">Rwanda</asp:ListItem>
<asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>
<asp:ListItem Value="LC">Saint Lucia</asp:ListItem>
<asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>
<asp:ListItem Value="WS">Samoa</asp:ListItem>
<asp:ListItem Value="SM">San Marino</asp:ListItem>
<asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>
<asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>
<asp:ListItem Value="SN">Senegal</asp:ListItem>
<asp:ListItem Value="SC">Seychelles</asp:ListItem>
<asp:ListItem Value="SL">Sierra Leone</asp:ListItem>
<asp:ListItem Value="SG">Singapore</asp:ListItem>
<asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>
<asp:ListItem Value="SI">Slovenia</asp:ListItem>
<asp:ListItem Value="SB">Solomon Islands</asp:ListItem>
<asp:ListItem Value="SO">Somalia</asp:ListItem>
<asp:ListItem Value="ZA">South Africa</asp:ListItem>
<asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>
<asp:ListItem Value="ES">Spain</asp:ListItem>
<asp:ListItem Value="LK">Sri Lanka</asp:ListItem>
<asp:ListItem Value="SH">St. Helena</asp:ListItem>
<asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>
<asp:ListItem Value="SD">Sudan</asp:ListItem>
<asp:ListItem Value="SR">Suriname</asp:ListItem>
<asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>
<asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>
<asp:ListItem Value="SE">Sweden</asp:ListItem>
<asp:ListItem Value="CH">Switzerland</asp:ListItem>
<asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>
<asp:ListItem Value="TW">Taiwan</asp:ListItem>
<asp:ListItem Value="TJ">Tajikistan</asp:ListItem>
<asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>
<asp:ListItem Value="TH">Thailand</asp:ListItem>
<asp:ListItem Value="TG">Togo</asp:ListItem>
<asp:ListItem Value="TK">Tokelau</asp:ListItem>
<asp:ListItem Value="TO">Tonga</asp:ListItem>
<asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>
<asp:ListItem Value="TN">Tunisia</asp:ListItem>
<asp:ListItem Value="TR">Turkey</asp:ListItem>
<asp:ListItem Value="TM">Turkmenistan</asp:ListItem>
<asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>
<asp:ListItem Value="TV">Tuvalu</asp:ListItem>
<asp:ListItem Value="UG">Uganda</asp:ListItem>
<asp:ListItem Value="UA">Ukraine</asp:ListItem>
<asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>
<asp:ListItem Value="GB">United Kingdom</asp:ListItem>
<asp:ListItem Value="US">United States</asp:ListItem>
<asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>
<asp:ListItem Value="UY">Uruguay</asp:ListItem>
<asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>
<asp:ListItem Value="VU">Vanuatu</asp:ListItem>
<asp:ListItem Value="VE">Venezuela</asp:ListItem>
<asp:ListItem Value="VN">Viet Nam</asp:ListItem>
<asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>
<asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>
<asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>
<asp:ListItem Value="EH">Western Sahara</asp:ListItem>
<asp:ListItem Value="YE">Yemen</asp:ListItem>
<asp:ListItem Value="ZR">Zaire</asp:ListItem>
<asp:ListItem Value="ZM">Zambia</asp:ListItem>
<asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
</asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <h2 class="reqd" style="margin: 0px; font: 500 16px helvetica, neue, helvetica, arial, sans-serif; color: rgb(51, 51, 51); width: 240px; padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;"><strong style="font: 500 16px / 16px helvetica, neue, helvetica, arial, sans-serif; vertical-align: middle; display: inline;">Item description</strong>:</h2>
                    </td>
                    <td>
                        <asp:TextBox ID="itemhtml" runat="server" Height="377px" Width="1173px"></asp:TextBox>
                        <ajaxToolkit:HtmlEditorExtender ID="itemhtml_HtmlEditorExtender" runat="server" BehaviorID="TextBox1_HtmlEditorExtender" TargetControlID="itemhtml" EnableSanitization="false">
                        </ajaxToolkit:HtmlEditorExtender>
                        <br />
                        <br />
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td style="width: 984px">
                        <asp:Button ID="listitem" runat="server" OnClick="listitem_Click" Text="List Item" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Cancel"></asp:Label>
                        <br />
          
                    </td>
                </tr>
                <tr>
                    <td style="width: 984px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 984px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 984px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13" style="width: 984px">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <table class="auto-style2">

                <tr>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

<%--</body>--%>
    </asp:Content>
