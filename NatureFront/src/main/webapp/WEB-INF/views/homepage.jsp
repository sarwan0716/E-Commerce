<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/resources/css/registration.css'></c:url>" rel="stylesheet">
<title>Insert title here</title>
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
}

.header {
    text-align: center;
    padding: 32px;
}

.row {
    display: -ms-flexbox; /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE10 */
    flex-wrap: wrap;
    padding: 0 4px;
}

/* Create four equal columns that sits next to each other */
.column {
    -ms-flex: 25%; /* IE10 */
    flex: 25%;
    max-width: 25%;
    padding: 0 4px;
}

.column img {
    margin-top: 8px;
    vertical-align: middle;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
    .column {
        -ms-flex: 50%;
        flex: 50%;
        max-width: 50%;
    }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .column {
        -ms-flex: 100%;
        flex: 100%;
        max-width: 100%;
    }
}
</style>
</head>
<body>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\t.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>MADE IN NATURE</h1>
                            <p>online shopping can make your life more easier</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\pen.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>MADE IN WOOD</h1>
                            <p>It makes awesome feeling don't miss it</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\n3.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>THE NATURE YOU LOVE</h1>
                            <p>live Freely, Happily & Safely!!</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="img-responsive" src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\turmeric.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>PURE TURMERIC</h1>
                            <p>Use once you can't leave its magic</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="img-responsive" src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\oil.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>OLIVE OIL</h1>
                            <p>Soulflower Olive Oil for Hair, Coldpressed 100% Pure Coldpressed</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
</div>
<br>
<div class="row"> 
  <div class="column">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\n.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\n1.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\n2.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\oil1.jpg" style="width:100%">
    
  </div>
  <div class="column">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\oil.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\t.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\tur.jpg" style="width:100%">
  </div>  
<div class="column">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\cast.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\flower.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\n1.jpg" style="width:100%">
  </div>  
  <div class="column">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\shampoo.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\oil1.jpg" style="width:100%">
    <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\shampoo1.jpg" style="width:100%">
  </div>
</body>
</html>