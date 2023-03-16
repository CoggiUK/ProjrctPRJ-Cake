<%-- 
    Document   : listcake
    Created on : Mar 7, 2023, 10:57:01 PM
    Author     : pc
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<%
    SinhNhatDAO s = new SinhNhatDAO();
    List<SinhNhat> lstS = s.getSinhNhatList();
%> 

<%
    TiecCuoiDAO t = new TiecCuoiDAO();
    List<TiecCuoi> lstT = t.getTiecCuoiList();
%>

<%
    CustomDAO c = new CustomDAO();
    List<Custom> lstC = c.getCustomList();
%> 

<html>
    <head>
        <meta charset="utf-8">
        <title>Tiem Banh Ngot</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">


        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Oswald:wght@500;600;700&family=Pacifico&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="../css/style.css" rel="stylesheet">
    </head>
    <body>
        <!-- Topbar Start -->
        <div class="container-fluid px-0 d-none d-lg-block">
            <div class="row gx-0">
                <div class="col-lg-4 text-center bg-secondary py-3">
                    <div class="d-inline-flex align-items-center justify-content-center">
                        <i class="bi bi-envelope fs-1 text-primary me-3"></i>
                        <div class="text-start">
                            <h6 class="text-uppercase mb-1">Email</h6>
                            <span>lamnthe161761@fpt.edu.vn</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-center bg-primary border-inner py-3">
                    <div class="d-inline-flex align-items-center justify-content-center">
                        <a href="../admin/index.jsp" class="navbar-brand">
                            <h1 class="m-0 text-uppercase text-white"><i class="fa fa-birthday-cake fs-1 text-dark me-3"></i>Tiem Banh Ngot</h1>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 text-center bg-secondary py-3">
                    <div class="d-inline-flex align-items-center justify-content-center">
                        <i class="bi bi-phone-vibrate fs-1 text-primary me-3"></i>
                        <div class="text-start">
                            <h6 class="text-uppercase mb-1">Contact</h6>
                            <span>0974149916</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-0">
            <a href="../admin/index.jsp" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 text-uppercase text-white"><i class="fa fa-birthday-cake fs-1 text-primary me-3"></i>Tiem Banh Ngot</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto mx-lg-auto py-0">
                    <a href="../index.jsp" class="nav-item nav-link">Home</a>
                    <a href="../admin/about.jsp" class="nav-item nav-link">About us</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Menu</a>
                        <div class="dropdown-menu m-0">
                            <a href="../List/listcake.jsp" class="dropdown-item active">List Cake</a>
                            <a href="../admin/updatecake.jsp" class="dropdown-item ">Update Cake</a>
                            <a href="../admin/addcake.jsp" class="dropdown-item ">Add cake</a>
                            <a href="../admin/deletecake.jsp" class="dropdown-item ">Delete cake</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Chef</a>
                        <div class="dropdown-menu m-0">
                            <a href="../List/listchef.jsp" class="dropdown-item ">List chef</a>
                            <a href="../admin/updatechef.jsp" class="dropdown-item ">Update chef</a>
                            <a href="../admin/addchef.jsp" class="dropdown-item ">Add chef</a>
                            <a href="../admin/deletechef.jsp" class="dropdown-item ">Delete chef</a>
                        </div>
                    </div>
                    <a href="../admin/service.html" class="nav-item nav-link">Service</a>
                    <a href="../List/listContact.jsp" class="nav-item nav-link">Contact</a>
                    <a href="../logout" class="nav-item nav-link">Log out</a>
                </div>
            </div>

        </div>
    </div>
</nav>
<!-- Navbar End -->


<!-- Page Header Start -->
<div class="container-fluid bg-dark bg-img p-5 mb-5">
    <div class="row">
        <div class="col-12 text-center">
            <h1 class="display-4 text-uppercase text-white">List cake</h1>
            <a href="../index.jsp">Home</a>
            <i class="far fa-square text-primary px-2"></i>
            <a href="../List/listcake.jsp">List cake</a>
        </div>
    </div>
</div>
<!-- Page Header End -->
<h2 align="center"> List of Banh sinh nhat </h2>
<table border="1" align="center">
    <tr>
        <td align="center"> Name </td>
        <td align="center"> Price </td>
        <td align="center"> Chef </td>
        <td align="center"> img </td>

    </tr>
    <%
      for(SinhNhat a: lstS) {
    %>
    <tr>
        <td><%= a.getNameS() %> </td>
        <td><%= a.getPriceS() %> </td>
        <td><%= a.getChefS() %> </td>
        <td><%= a.getImgS() %> </td>
    </tr>  
    <% } %>  
</table> 


<h2 align="center"> List of Banh tiec cuoi </h2>
<table border="1" align="center">
    <tr>
        <td align="center"> Name </td>
        <td align="center"> Price </td>
        <td align="center"> Chef </td>
        <td align="center"> img </td>

    </tr>
    <%
      for(TiecCuoi b: lstT) {
    %>
    <tr>
        <td><%= b.getNameT() %> </td>
        <td><%= b.getPriceT() %> </td>
        <td><%= b.getChefT() %> </td>
        <td><%= b.getImgT() %> </td>
    </tr>  
    <% } %>  
</table>

<h2 align="center"> List of Banh tu thiet ke </h2>
<table border="1" align="center">
    <tr>
        <td align="center"> Name </td>
        <td align="center"> Price </td>
        <td align="center"> Chef </td>
        <td align="center"> img </td>

    </tr>
    <%
      for(Custom d: lstC) {
    %>
    <tr>
        <td><%= d.getNameC() %> </td>
        <td><%= d.getPriceC() %> </td>
        <td><%= d.getChefC() %> </td>
        <td><%= d.getImgC() %> </td>
    </tr>  
    <% } %>  
</table>

<!-- Footer Start -->
<div class="container-fluid bg-dark bg-img text-secondary" style="margin-top: 135px">
    <div class="container">
        <div class="row gx-5">
            <div class="col-lg-4 col-md-6 mt-lg-n5">
                <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary border-inner p-4">
                    <a href="index.html" class="navbar-brand">
                        <h1 class="m-0 text-uppercase text-white"><i class="fa fa-birthday-cake fs-1 text-dark me-3"></i>Tiem Banh Ngot</h1>
                    </a>
                    <p class="mt-3">Noi mang lai hanh phuc cho ban</p>
                </div>
            </div>
            <div class="col-lg-8 col-md-6">
                <div class="row gx-5">
                    <div class="col-lg-4 col-md-12 pt-5 mb-5">
                        <h4 class="text-primary text-uppercase mb-4">Lien he ngay</h4>
                        <div class="d-flex mb-2">
                            <i class="bi bi-geo-alt text-primary me-2"></i>
                            <p class="mb-0">Th?ch Hoà, Th?ch Th?t, Hà N?i </p>
                        </div>
                        <div class="d-flex mb-2">
                            <i class="bi bi-envelope-open text-primary me-2"></i>
                            <p class="mb-0">lamnthe161761@fpt.edu.vn</p>
                        </div>
                        <div class="d-flex mb-2">
                            <i class="bi bi-telephone text-primary me-2"></i>
                            <p class="mb-0">0974149916</p>
                        </div>
                        <div class="d-flex mt-4">
                            <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 me-2" href="#"><i class="fab fa-twitter fw-normal"></i></a>
                            <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 me-2" href="#"><i class="fab fa-facebook-f fw-normal"></i></a>
                            <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 me-2" href="#"><i class="fab fa-linkedin-in fw-normal"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                        <h4 class="text-primary text-uppercase mb-4">Truy cap nhanh</h4>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="../index.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Trang chu</a>
                            <a class="text-secondary mb-2" href="about.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Thong tin ve chung toi</a>
                            <a class="text-secondary mb-2" href="menu.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Menu</a>
                            <a class="text-secondary mb-2" href="team.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Thong tin dau bep</a>
                            <a class="text-secondary mb-2" href="service.html"><i class="bi bi-arrow-right text-primary me-2"></i>Dich vu</a>
                            <a href="List/listContact.jsp" class="text-secondary mb-2"><i class="bi bi-arrow-right text-primary me-2"></i>Lien he</a>
                            <a class="text-secondary" href="../logout"><i class="bi bi-arrow-right text-primary me-2"></i>Dang xuat</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                        <h4 class="text-primary text-uppercase mb-4">Khuyen mai</h4>
                        <p>Hay de lai thong tin cua ban de nhan duoc uu dai nhe</p>
                        <form action="">
                            <div class="input-group">
                                <input type="text" class="form-control border-white p-3" placeholder="Your Email">
                                <button class="btn btn-primary">Dang ky</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid text-secondary py-4" style="background: #111111;">
    <div class="container text-center">
        <p class="mb-0">&copy; <a class="text-white border-bottom" href="#">Tiem Banh Ngot</a>.</p>
    </div>
</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-primary border-inner py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/counterup/counterup.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
</body>

</html>
