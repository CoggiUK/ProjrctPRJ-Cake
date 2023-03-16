<%-- 
    Document   : index
    Created on : Mar 1, 2023, 8:06:28 AM
    Author     : pc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>


<%
  SinhNhatDAO s = new SinhNhatDAO();
  List<SinhNhat> lstS = s.getSinhNhatList();
  request.setAttribute("lstS", lstS);
%>

<%
  TiecCuoiDAO t = new TiecCuoiDAO();
  List<TiecCuoi> lstT = t.getTiecCuoiList();
  request.setAttribute("lstT", lstT);
%>

<%
  CustomDAO c = new CustomDAO();
  List<Custom> lstC = c.getCustomList();
  request.setAttribute("lstC", lstC);
%>

<%
  DauBepDAO o = new DauBepDAO();
  List<DauBep> lstB = o.getDauBepList();
  request.setAttribute("lstB", lstB);
%>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Tiem Banh Ngot</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Oswald:wght@500;600;700&family=Pacifico&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
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
                        <a href="index.jsp" class="navbar-brand">
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
            <a href="index.jsp" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 text-uppercase text-white"><i class="fa fa-birthday-cake fs-1 text-primary me-3"></i>Tiem Banh Ngot</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto mx-lg-auto py-0">
                    <a href="index.jsp" class="nav-item nav-link active">Home</a>
                    <c:if test="${sessionScope.acc !=null }">
                        <c:if test="${sessionScope.acc.role == 1 }">
                            <a href="admin/about.jsp" class="nav-item nav-link">About us</a>
                            <a href="admin/menu.jsp" class="nav-item nav-link ">Menu</a>
                            <a href="admin/team.jsp" class="nav-item nav-link ">Chefs</a>
                            <a href="admin/service.html" class="nav-item nav-link">Service</a>
                        </c:if>
                    </c:if>
                    <c:if test="${sessionScope.acc ==null || sessionScope.acc !=null && sessionScope.acc.role != 1}">
                        <a href="about.jsp" class="nav-item nav-link">About us</a>
                        <a href="menu.jsp" class="nav-item nav-link">Menu</a>
                        <a href="team.jsp" class="nav-item nav-link">Chefs</a>
                        <a href="service.jsp" class="nav-item nav-link">Service</a>
                    </c:if>
                    <c:if test="${sessionScope.acc !=null }">
                        <a href="logout" class="nav-item nav-link">Log out</a>
                    </c:if>
                    <c:if test="${sessionScope.acc ==null }">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Log in/Register</a>
                            <div class="dropdown-menu m-0">
                                <a href="login.jsp" class="dropdown-item ">Log in</a>
                                <a href="DangKy.jsp" class="dropdown-item ">Register</a>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->


        <!-- Hero Start -->
        <div class="container-fluid bg-primary py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row justify-content-start">
                    <div class="col-lg-8 text-center text-lg-start">
                        <h1 class="font-secondary text-primary mb-4">Super Crispy</h1>
                        <h1 class="display-1 text-uppercase text-white mb-4">Tiem Banh Ngot</h1>
                        <h1 class="text-uppercase text-white">Tiem banh ngon nhat the gioi</h1>
                        <div class="d-flex align-items-center justify-content-center justify-content-lg-start pt-5">
                            <a href="" class="btn btn-primary border-inner py-3 px-5 me-5">Xem them</a>
                            <button type="button" class="btn-play" data-bs-toggle="modal"
                                    data-src="https://www.youtube.com/shorts/AW9M8hk5eoQ" data-bs-target="#videoModal">
                                <span></span>
                            </button>
                            <h5 class="font-weight-normal text-white m-0 ms-4 d-none d-sm-block">Video</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Video Modal Start -->
        <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- 16:9 aspect ratio -->
                        <div class="ratio ratio-16x9">
                            <iframe class="embed-responsive-item" src="" id="video" allowfullscreen allowscriptaccess="always"
                                    allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Video Modal End -->


        <!-- About Start -->
        <div class="container-fluid pt-5">
            <div class="container">
                <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
                    <h2 class="text-primary font-secondary">About us</h2>
                    <h1 class="display-4 text-uppercase">Welcom to </h1>
                    <h1 class="display-4 text-uppercase">Tiem Banh Ngot </h1>

                </div>
                <div class="row gx-5">
                    <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 400px;">
                        <div class="position-relative h-100">
                            <img class="position-absolute w-100 h-100" src="img/about.jpg" style="object-fit: cover;">
                        </div>
                    </div>
                    <div class="col-lg-6 pb-5">
                        <h4 class="mb-4">Tiem Banh Ngot luon duoc danh gia mang lai nhung cam giac tuyet voi cho nhung khach hang ghe qua</h4>
                        <p class="mb-5">Duoc tao nen boi cac dau bep co kinh nghiem nhieu nam trong nghe. Chung toi luon dam bao yeu to chat luong va an suc khoe cua khach hang len hang dau.</p>
                        <div class="row g-5">
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center justify-content-center bg-primary border-inner mb-4" style="width: 90px; height: 90px;">
                                    <i class="fa fa-heartbeat fa-2x text-white"></i>
                                </div>
                                <h4 class="text-uppercase">100% Healthy</h4>
                                <p class="mb-0">Voi chung toi chat luong san pham la uu tien hang dau</p>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center justify-content-center bg-primary border-inner mb-4" style="width: 90px; height: 90px;">
                                    <i class="fa fa-award fa-2x text-white"></i>
                                </div>
                                <h4 class="text-uppercase">Award Winning</h4>
                                <p class="mb-0">Giai thuong Tiem banh ngon nhat nam 2023</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Facts Start -->
        <div class="container-fluid bg-img py-5 mb-5">
            <div class="container py-5">
                <div class="row gx-5 gy-4">
                    <c:forEach var="o" items="${lstB}">
                        <div class="col-lg-3 col-md-6">
                            <div class="d-flex">
                                <div class="bg-primary border-inner d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                    <i class="fa fa-star text-white"></i>
                                </div>
                                <div class="ps-4">
                                    <h6 class="text-primary text-uppercase">${o.chef}</h6>
                                    <h1 class="display-5 text-white mb-0" data-toggle="counter-up">${o.rate}</h1>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Facts End -->


        <!-- Products Start -->
        <!-- Products Start -->
        <div class="container-fluid about py-5">
            <div class="container">
                <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
                    <h2 class="text-primary font-secondary">Menu</h2>
                    <h1 class="display-4 text-uppercase">EXPLORE OUR CAKES</h1>
                </div>
                <div class="tab-class text-center">
                    <ul class="nav nav-pills d-inline-flex justify-content-center bg-dark text-uppercase border-inner p-4 mb-5">
                        <li class="nav-item">
                            <a class="nav-link text-white active" data-bs-toggle="pill" href="#tab-1">Sinh nhat</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" data-bs-toggle="pill" href="#tab-2">Tiec cuoi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" data-bs-toggle="pill" href="#tab-3">Custom</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">

                            <div class="row g-3">
                                <c:forEach var="s" items="${lstS}">
                                    <div class="col-lg-6">

                                        <div class="d-flex h-100">
                                            <div class="flex-shrink-0">
                                                <img class="img-fluid" src="${s.imgS}" alt="" style="width: 150px; height: 85px;">
                                                <h4 class="bg-dark text-primary p-2 m-0">${s.priceS}</h4>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4">
                                                <h5 class="text-uppercase">${s.nameS}</h5>
                                                <p>${s.idChef}</p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-3">
                                <c:forEach var="t" items="${lstT}">
                                    <div class="col-lg-6">
                                        <div class="d-flex h-100">
                                            <div class="flex-shrink-0">
                                                <img class="img-fluid" src="${t.imgT}" alt="" style="width: 150px; height: 85px;">
                                                <h4 class="bg-dark text-primary p-2 m-0">${t.priceT}</h4>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4">
                                                <h5 class="text-uppercase">${t.nameT}</h5>
                                                <span>${t.idChef}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-3">
                                <c:forEach var="c" items="${lstC}">

                                    <div class="col-lg-6">
                                        <div class="d-flex h-100">
                                            <div class="flex-shrink-0">
                                                <img class="img-fluid" src="${c.imgC}" alt="" style="width: 150px; height: 85px;">
                                                <h4 class="bg-dark text-primary p-2 m-0">${c.priceC}</h4>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4">
                                                <h5 class="text-uppercase">${c.nameC}</h5>
                                                <span>${c.idChef}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Products End -->
        <!-- Products End -->
        <!-- Service Start -->
        <div class="container-fluid service position-relative px-5 mt-5" style="margin-bottom: 135px;">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6">
                        <div class="bg-primary border-inner text-center text-white p-5">
                            <h4 class="text-uppercase mb-3">Banh sinh nhat</h4>
                            <p>Ngay sinh nhat duoc coi la ngay quan trong trong nam</p>
                            <a class="text-uppercase text-dark" href="">Xem them <i class="bi bi-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="bg-primary border-inner text-center text-white p-5">
                            <h4 class="text-uppercase mb-3">Banh cuoi</h4>
                            <p>Chiec banh duoc su dung cho ngay trong dai nhat trong cuoc doi cua ban</p>
                            <a class="text-uppercase text-dark" href="">xem them <i class="bi bi-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="bg-primary border-inner text-center text-white p-5">
                            <h4 class="text-uppercase mb-3">Custom</h4>
                            <p>Chiec banh mang phong cach rieng biet cua nguoi dat chung</p>
                            <a class="text-uppercase text-dark" href="">Xem them <i class="bi bi-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-6 text-center">
                        <h1 class="text-uppercase text-light mb-4">Nhan dip tet Nguyen Dan giam gia den 40%</h1>
                        <a href="" class="btn btn-primary border-inner py-3 px-5">Dat hang ngay</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Start -->


        <!-- Team Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
                    <h2 class="text-primary font-secondary">Team Members</h2>
                    <h1 class="display-4 text-uppercase">Our Master Chefs</h1>
                </div>
                <div class="row g-5">
                    <c:forEach var="b" items="${lstB}">
                        <div class="col-lg-4">

                            <div class="team-item">
                                <div class="position-relative overflow-hidden">
                                    <img class="img-fluid w-100" src="${b.img}" alt="" >
                                    <div class="team-overlay w-100 h-100 position-absolute top-50 start-50 translate-middle d-flex align-items-center justify-content-center">
                                        <div class="d-flex align-items-center justify-content-start">
                                            <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 mx-1" href="#"><i class="fab fa-twitter fw-normal"></i></a>
                                            <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 mx-1" href="#"><i class="fab fa-facebook-f fw-normal"></i></a>
                                            <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 mx-1" href="#"><i class="fab fa-linkedin-in fw-normal"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="bg-dark border-inner text-center p-4">
                                    <h4 class="text-uppercase text-primary">${b.chef}</h4>
                                    <p class="text-white ">${b.chuyenMon}</p>
                                    <p class="text-white ">${b.gender}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Offer Start -->
        <div class="container-fluid bg-offer my-5 py-5">
            <div class="container py-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-7 text-center">
                        <div class="section-title position-relative text-center mx-auto mb-4 pb-3" style="max-width: 600px;">
                            <h2 class="text-primary font-secondary">Combo dac biet</h2>
                            <h1 class="display-4 text-uppercase text-white">Super cakes</h1>
                        </div>
                        <p class="text-white mb-4">Banh duoc thiet ke doc nhat theo yeu cau cua khach hang</p>
                        <a href="" class="btn btn-primary border-inner py-3 px-5 me-3">Dat ngay</a>
                        <a href="" class="btn btn-dark border-inner py-3 px-5">Xem them</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Offer End -->




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
                                    <p class="mb-0">Thạch Hoà, Thạch Thất, Hà Nội </p>
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
                                    <a class="text-secondary mb-2" href="index.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                                    <c:if test="${sessionScope.acc !=null }">
                                        <c:if test="${sessionScope.acc.role == 1 }">
                                            <a class="text-secondary mb-2" href="admin/about.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>About us</a>
                                            <a class="text-secondary mb-2" href="admin/menu.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Menu</a>
                                            <a class="text-secondary mb-2" href="admin/team.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Chefs</a>
                                            <a class="text-secondary mb-2" href="admin/service.html"><i class="bi bi-arrow-right text-primary me-2"></i>Service</a>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${sessionScope.acc ==null || sessionScope.acc !=null && sessionScope.acc.role != 1}">
                                        <a class="text-secondary mb-2" href="about.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>About us</a>
                                        <a class="text-secondary mb-2" href="menu.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Menu</a>
                                        <a class="text-secondary mb-2" href="team.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Chefs</a>
                                        <a class="text-secondary mb-2" href="service.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Service</a>
                                    </c:if>
                                    <c:if test="${sessionScope.acc !=null }">
                                        <a class="text-secondary" href="logout"><i class="bi bi-arrow-right text-primary me-2"></i>Log out</a>
                                    </c:if>
                                    <c:if test="${sessionScope.acc ==null }">
                                        <a class="text-secondary mb-2" href="login.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Log in</a>
                                        <a class="text-secondary" href="DangKy.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Register</a>
                                    </c:if>
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