<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="index.aspx.cs" Inherits="saleman.indextest" MasterPageFile="~/indexmasterpage.Master" %>



<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <center>
        <div class="container">
            <h1 style="margin:20px; padding-top:40px" class="text-uppercase title-h1">Last products</h1>
        </div>
					<br />
					<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" Width="575px">
                        
                        <ItemTemplate>
                            
                            <br />
                            <table class="nav-justified">
                                <tr>
                                    <%--href="productsellpage.aspx?iditem=<%# Eval("id_product") %>"--%>
                                    <td class="auto-style1">
                                        <div class="dlimg">
                                        <a href='<%#Eval("id_product","productsellpage.aspx?iditem={0}") %>'>
                                        <asp:Image  ID="ImageB1" runat="server" CommandArgument='<%# Eval("id_product") %>' CommandName="viewdetails"  ImageUrl='<%# Eval("image1") %>'  Width="250px"  Height="250px"/>

                                        </a>
                                            </div>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="text-center"><strong><h2>
                                        Price:<asp:Label ID="Label3" runat="server" Text='<%# Eval("last_price") %>'></asp:Label>&#8362;
                                        </strong></h1></td>

                                  
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>

					</center>


            <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT top 5 [image1], [order_price], [id_product], [userid] FROM [addproduct]ORDER BY [id_product] DESC"></asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT top 5 [image1], [order_price], [id_product], [userid] FROM [addproduct]ORDER BY [id_product] DESC"></asp:SqlDataSource>--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT top 5 [id_product], [last_price], [image1], [userid] FROM [addproduct] ORDER BY [id_product] DESC"></asp:SqlDataSource>
        
   <%-- SELECT TOP 5 [id_product], [order_price], [image1], [userid], [status] FROM [addproduct] ORDER BY [id_product] DESC--%>


    <%--start category area --%>
    <section class="cat-area">
        <div class="container">
            <h1 style="margin:40px" class="text-uppercase title-h1">My Categories</h1>
        </div>
        <div class="button-group">

        </div>
        <div class="row grid">
            <div class="col-lg-4 col-md-6 col-sm-12 element-item latest">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                            <asp:Image ID="antiques" runat="server" src="img/category/Antiques.jpg" alt="Antiques" />
                        </a>--%>
                        <asp:HyperLink id="antiques" ImageUrl="img/category/Antiques.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=4" Text="Antiques Category" runat="server"/>  

                    </div>
                    <br />
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Antiques</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div> <%--Antiques--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">--%>
                            <%--<asp:Image ID="books" runat="server" src="img/category/books.jpg" alt="Books" />--%>
                        <asp:HyperLink id="books" ImageUrl="img/category/books.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=6" Text="Books Category" runat="server"/>  

                            <%--</a>--%>
                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Books</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--books--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/games2.png" alt="video-games">
                            </a>--%>
                        <asp:HyperLink id="videogames" ImageUrl="img/category/games2.png" NavigateUrl="~/allproduct.aspx?q=&cat=17" Text="Video Games Category" runat="server"/>  

                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Video Games & Consoles</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Video Games & Consoles--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/cars.jpg" alt="cars">
                            </a>--%>
                        <asp:HyperLink id="cars" ImageUrl="img/category/cars.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=18" Text="Cars Category" runat="server"/>  

                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Cars Accessories</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Cars Accessories--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/computer-access.jpg" alt="cars">
                            </a>--%>
                        <asp:HyperLink id="computeraccess" ImageUrl="img/category/computer-access.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=12" Text="Computer Access Category" runat="server"/>  

                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Computers/Tablets & Networking</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Computers/Tablets & Networking--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/clothing.jpg" alt="clothing">
                            </a>--%>
                        <asp:HyperLink id="clothing" ImageUrl="img/category/clothing.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=10" Text="Clothing Category" runat="server"/>  

                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Clothing, Shoes & Accessories</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Clothing, Shoes & Accessories--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/sportoutdoors.jpg" alt="sportoutdoors">
                            </a>--%>
                        <asp:HyperLink id="sportoutdoors" ImageUrl="img/category/sportoutdoors.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=14" Text="Sport Outdoors Category" runat="server"/>  

                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Sports</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Sports--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/travel.jpg" alt="travel">
                            </a>--%>
                        <asp:HyperLink id="travel" ImageUrl="img/category/travel.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=16" Text="Travel Category" runat="server"/>  
                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Travel</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Travel--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/art.jpg" alt="art">
                            </a>--%>
                        <asp:HyperLink id="art" ImageUrl="img/category/art.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=8" Text="Art Category" runat="server"/>  
                        
                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Art</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Art--%>

            <div class="col-lg-4 col-md-6 col-sm-12 element-item populer">
                <div class="our-project">
                    <div class="img">
                        <%--<a href="#">
                        <img src="img/category/homegarden.jpg" alt="homegarden">
                            </a>--%>
                        <asp:HyperLink id="homegarden" ImageUrl="img/category/homegarden.jpg" NavigateUrl="~/allproduct.aspx?q=&cat=5" Text="Home Garden Category" runat="server"/>  

                    </div>
                    <div class="title-text py-4">
                        <h4 class="text-uppercase">Home & Garden</h4>
                        <span class="text-secondary"></span>
                    </div>
                </div>
            </div><%--Home & Garden--%>

            
        </div>

    </section>

    <%--end category area --%>

    <%--start Services Area--%>
    <section class="services-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center services-title">
                    <h1 class="text-uppercase title-text">Services Offers</h1>
                    <p class="para">There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered alteration in some form, by injected humour</p>
                </div>
            </div>
            <div class="container services-list">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="services">
                            <div class="services-img text-center py-4">
                                <img src="img/services/s1.png" alt="serv1"/>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title text-uppercase font-ink">online shopping</h5>
                                <p class="card-text text-secondary">
                                    online shopping online shopping online shopping
                                    online shopping online
                                    online shopping online shopping 
                                </p>
                            </div>
                        </div>
                    </div><%--s1--%>

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="services">
                            <div class="services-img text-center py-4">
                                <img src="img/services/s2.png" alt="serv2"/>
                            </div>
                            <br />
                            <div class="card-body text-center">
                                <h5 class="card-title text-uppercase font-ink">tracking numbers</h5>
                                <p class="card-text text-secondary">
                                    online shopping online shopping online shopping
                                    online shopping online
                                    online shopping online shopping 
                                </p>
                            </div>
                        </div>
                    </div><%--s2--%>

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="services">
                            <div class="services-img text-center py-4">
                                <img src="img/services/s3.png" alt="serv3"/>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title text-uppercase font-ink">worldwide delivery</h5>
                                <p class="card-text text-secondary">
                                    online shopping online shopping online shopping
                                    online shopping online
                                    online shopping online shopping 
                                </p>
                            </div>
                        </div>
                    </div><%--s3--%>

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="services">
                            <div class="services-img text-center py-4">
                                <img src="img/services/s4.png" alt="serv4"/>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title text-uppercase font-ink">buy now</h5>
                                <p class="card-text text-secondary">
                                    online shopping online shopping online shopping
                                    online shopping online
                                    online shopping online shopping 
                                </p>
                            </div>
                        </div>
                    </div><%--s4--%>
                </div>
            </div>

        </div>
    </section>

    <%--end Services Area--%>



    <footer class="footer-area">
        <div class="container">
            <div class="">
                <div class="site-logo text-center py-4">
                    <a href="#"><img src="img/logo.png" alt="logo" /></a>
                </div>
                <div class="social text-center">
                    <h5 class="text-uppercase"> Follow Me</h5>
                    <a class="btn btn-primary" style="background-color: #3b5998" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-primary" style="background-color: #ac2bac" href="#!" role="button"><i class="fab fa-instagram"></i></a>
                    <a class="btn btn-primary" style="background-color: #0082ca" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-primary" style="background-color: #ed302f" href="#!" role="button"><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-primary" style="background-color: #25d366" href="#!" role="button"><i class="fab fa-whatsapp"></i></a>
                </div>
                <div class="fa-copyright text-center">
                    <p class="para">
                    Copyright &copy; 2021 All rights reserved
                        </p>
                </div>
            </div>
        </div>

    </footer>
</asp:Content>

