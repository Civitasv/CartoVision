<%--
  Created by IntelliJ IDEA.
  User: dellyx
  Date: 2019-07-24
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="tags.jsp" %>
<html>
<head>
    <title>CARTOVISION慧图社</title>

    <style>
        @font-face {
            font-family: myCatF;
            src: url("${path}/font/Omega+Sans+Regular.ttf")
        }

        body {
            font-family: "Open Sans", sans-serif;
        }

        #scrollUp {
            background-color: #050505;
            color: whitesmoke;
            font-size: 40px;
            line-height: 1;
            text-align: center;
            text-decoration: none;
            bottom: 10px;
            right: 20px;
            overflow: hidden;
            width: 40px;
            height: 40px;
            border: none;
            opacity: 0.8;
        }

        #scrollUp:hover {
            -webkit-transform: scale3d(1.1, 1.1, 1.1);
            transform: scale3d(1.1, 1.1, 1.1);
            opacity: 1;
        }

        @media screen and (min-width: 992px) {
            #scrollUp {
                bottom: 100px
            }
        }

        .navbar-order {
            /* 为导航栏边框设置渐变 */
            border-image: linear-gradient(to right,
            #045d6f 50%, #eedee3 50%, #eedee3 100%);
            color: whitesmoke;
            /* 为首页背景设置渐变 */
            background: linear-gradient(to right,
            #045d6f calc(50% / 6 * 6), #eedee3 calc(50% / 6 * 6), #eedee3 100%);
            margin: 0;
            border: none;
            border-radius: 0;
        }

        .navbar-default .navbar-brand {
            color: whitesmoke;
            animation-delay: 1s;
        }

        .navbar-default .navbar-left > li > a {
            color: whitesmoke;
            font-weight: bold;
        }

        .navbar-default .navbar-right > li > a {
            color: #045d6f;
        }

        .icon {
            height: 100%;
            width: auto;
            z-index: 100;
        }

        #presentation {
            /* background-image: url("image/bf.jpg");
             background-position: center;
             background-size: cover;*/
            position: relative;
            display: table;
            width: 100%;
            /*占满整个视口*/
            height: 100vh;
        }


        .case {
            line-height: 2;
        }

        .introduce {
        }

        .about-text, .structure-text, .work-text {
            padding-top: 100px;
        }

        .work-text, .structure-text {
            color: whitesmoke;
        }

        .second-work-text {
            padding-top: 100px;
            padding-left: 10%;
        }

        .second-work-text h1 {
            font-size: 48px;
            font-weight: 700;
        }

        .second-work-image {
            padding-bottom: 100px;
            background-image: url("${path}/image/ep_naturalwhite.png");
            background-position: center;
            overflow: hidden;
        }

        .about-detail {
            margin-top: 60px;
            font-size: 15px;
        }

        .about-detail span {
            line-height: 3;
        }

        .about-Chinese, .work-Chinese, .structure-Chinese, .contact-Chinese, .carto-Chinese {
            font-size: 20px;
            font-weight: bold;
        }

        .about-English, .work-English, .structure-English, .carto-English {
            margin-top: 5px;
            font-size: 15px;
            display: block;
            float: right;
            font-style: italic;
        }

        .my-form {
            background-color: transparent;
            border-radius: 0;
            border: 1px solid;
        }

        .recruit-form {
            margin-top: 100px;
        }

        .structure-English {
            margin-bottom: 100px;
        }

        .info-image {
            margin-top: 300px;
        }

        .about-image {
            padding-bottom: 100px;
            background-image: url("${path}/image/ep_naturalwhite.png");
            background-position: center;
            overflow: hidden;
        }

        .work-image {
            padding-bottom: 100px;
            background-image: url("${path}/image/prism.png");
            background-position: center;
            overflow: hidden;
        }

        .structure-image {
            padding-bottom: 100px;
            background-image: url("${path}/image/prism.png");
            background-position: center;
            overflow: hidden;
        }

        .contact-image {
            padding-bottom: 100px;
            background-image: url("${path}/image/redox.png");
            background-position: center;
            overflow: hidden;
        }

        .contact-summarize span {
            font-size: 50px;
            font-weight: bolder;
            font-family: myCatF;
        }

        .power-image {
            padding-top: 40px;
            padding-bottom: 60px;
            background-image: url("${path}/image/cartographer.png");
            background-position: center;
            overflow: hidden;
            line-height: 30px;
        }

        .rights-image {
            background-image: url("${path}/image/dark_wall.png");
            background-position: center;
            overflow: hidden;
            color: whitesmoke;
        }

        .info-title {
            font-size: 20px;
            color: whitesmoke;
            font-weight: bold;
            display: block;
            margin-bottom: 30px;
        }

        .info-detail {
            font-size: 14px;
            color: whitesmoke;
        }

        .division {
            border-top: 2px solid #8c8b8b;
            margin-top: 10px;
        }

        .contact-English {
            margin-top: 100px;
            font-size: 13px;
            font-style: italic;
        }


        .contact-summarize-image {
            margin-top: 300px;
        }

        .contact-Chinese {
            margin-top: 110px;
        }

        .info {
            background-color: whitesmoke;
            font-size: 1.8rem;
        }

        .info span {
            margin-left: 30px;
        }

        .summary {
            background-color: #045d6f;
            vertical-align: bottom;
            /*占满整个视口*/
            position: relative;
            height: 100vh;
            color: #eedee3;
        }

        .hr1 {
            height: 1px;
            border: none;
            border-top: 2px solid #eedee3;
            width: 50px;
            margin: 40px 0 80px 0;
            animation-delay: 0.75s;
        }

        .sketch-content {
            margin: 0;
            text-align: center;
            transform: rotate(270deg);
            -ms-transform: rotate(270deg); /* IE 9 */
            -moz-transform: rotate(270deg); /* Firefox */
            -webkit-transform: rotate(270deg); /* Safari 和 Chrome */
            -o-transform: rotate(270deg); /* Opera */
            color: #045d6f;
            overflow: hidden;
        }

        .sketch-content:before {
            position: absolute;
            color: #eedee3;
            height: 50%;
            content: attr(data-content);
            overflow: hidden;
        }

        .sketch {
            background: linear-gradient(to right,
            #045d6f 50%, #eedee3 50%, #eedee3 100%);
            vertical-align: bottom;
            /*占满整个视口*/
            position: relative;
            height: 100vh;
        }

        .sketch h1 {
            font-size: 50px;
            font-weight: 600;
        }


        .head-image {
            /*background-image: url("image/world-map.jpg");
            background-position: center;
            background-size: cover;*/
            background-color: #eedee3;
            position: relative;
            /*占满整个视口*/
            height: 100vh;
        }

        .image {
            width: 30%;
            float: right;
        }


        .summary-text {
            margin-top: 30vh;
            margin-left: 5vw;
        }

        .first, .second, .third {
            font-size: 15px;
            line-height: 20px;
        }

        .summary-title {
            animation-delay: 1.1s;
            font-family: myCatF;
            font-weight: 800;
        }

        .hr1 {
            animation-delay: 1.1s;
        }

        .first {
            animation-delay: 1.4s;
        }

        .second {
            animation-delay: 1.6s;
        }

        .third {
            animation-delay: 1.8s;
        }

        .green {
            color: green;
            padding-left: 10%;
            font-size: 24px;
            padding-top: 50px;
            font-weight: 600;
            text-align: center;
        }

        .green .big {
            font-size: 300px;
            line-height: 240px;
            font-weight: 700;
        }

        .black {
            float: left;
            color: black;
            font-size: 18px;
            padding-top: 50px;
            font-weight: 600;
            text-align: center;
        }

        .black .big {
            font-size: 150px;
            line-height: 120px;
            font-weight: 700;
        }

        .map-design, .code, .thing {
            font-size: 20px;
            font-weight: bolder;
            color: whitesmoke;
        }

        .thing-detail {
            font-size: 15px;
            color: whitesmoke;
        }

        .code-detail {
            font-size: 15px;
            color: whitesmoke;
        }

        .map-design-detail {
            font-size: 15px;
            color: whitesmoke;
        }

        .map-design-image {
            width: 10%;
            margin-left: 10%;
            margin-bottom: 20px;
            float: left;
        }

        .code-image {
            width: 10%;
            margin-left: 10%;
            margin-bottom: 20px;
            float: left;
        }
    </style>

    <script>
        $(document).ready(function () {
            $('body').addClass('loaded');
            $('#loader-wrapper .load_title').remove();
            $.scrollUp({
                scrollName: "scrollUp",
                topDistance: "300",
                topSpeed: 300,
                animation: "fade",
                animationInSpeed: 200,
                animationOutSpeed: 200,
                scrollText: '<i class="fa fa-angle-double-up"></i>',
                activeOverlay: !1
            });

            // Slow scrolling
            function slowScrolling() {
                let anchors = document.querySelectorAll('a[href*="#"]')
                if (anchors == null)
                    return;
                for (let anchor of anchors) {
                    anchor.addEventListener('click', function (e) {
                        e.preventDefault()

                        let blockID = anchor.getAttribute('href')

                        document.querySelector('' + blockID).scrollIntoView({
                            behavior: 'smooth',
                            block: 'start'
                        });
                    });
                }
                ;
            };
            slowScrolling()
            initLG();
            $(".image img").hide();
            $(".image span").hide();
            $("#qq_image").mouseover(function () {
                $(".image img").removeClass("bounceOutUp delay-1s");
                $(".image img").addClass("bounceInDown");
                $(".image img").attr("src", "${path}/image/welcome.jpg");
                $(".image img").show();
            })
            $("#qq_image").mouseout(function () {
                $(".image img").removeClass("bounceInDown");
                $(".image img").addClass("bounceOutUp delay-1s");
            })
            $("#weixin_image").mouseover(function () {
                $(".image img").removeClass("bounceOutUp delay-1s");
                $(".image img").addClass("bounceInDown");
                $(".image img").attr("src", "${path}/image/tencent.jpg");
                $(".image img").show();
            })
            $("#weixin_image").mouseout(function () {
                $(".image img").removeClass("bounceInDown");
                $(".image img").addClass("bounceOutUp delay-1s");
            })

        });

    </script>
    <!--页面加载start-->
    <link rel="stylesheet" href="${path}/quote_css/demo.min.css">
    <link rel="stylesheet" href="${path}/css/lgallery.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/loader.css">
</head>
<body>
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
    <div class="load_title">加载CARTOVISION报名界面<br><span>V1.0</span></div>
</div>

<nav class="navbar navbar-default navbar-order">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand animated fadeInDown" href="#" style="padding: 0;">
                <img alt="Brand" src="${path}/image/icon.png" class="img-responsive icon">
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-left animated fadeInDown delay-1s">
                <li><a href="#presentation">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#wor">Work</a></li>
                <li><a href="#struct">Structure</a></li>
                <li><a href="#cont">Sign up</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right animated lightSpeedIn delay-1s">
                <li><a href="#"><i class="fa fa-qq" id="qq_image" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-weixin" id="weixin_image" aria-hidden="true"></i></a></li>
                <li><a href="mailto:2309780282@qq.com?subject=加入我们"><i class="fa fa-envelope" id="envelope_image"
                                                                       aria-hidden="true"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <!-- 简短介绍 -->
    <header id="presentation" class="scroll-block">
        <div class="row">
            <div class="col-md-5 col-sm-5 col-xs-5 summary">
                <div class="summary-text">
                    <h1 style="font-size: 50px" class="summary-title animated bounceInLeft">武汉大学慧图社</h1>
                    <hr class="hr1 animated bounceInLeft">
                    <p class="first animated bounceInLeft">
                        武汉大学地理信息系统开发及地图制图设计与研究的学生爱好者的聚集地
                    </p>
                    <p class="second animated bounceInLeft">
                        以技术交流和项目实践为目的，致力于高校智慧校园系列GIS系统建设
                    </p>
                    <p class="third animated bounceInLeft">
                        用多彩地图丰富学生生活，追求在提升个人技术能力的同时，创造实用价值
                    </p>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 sketch">
                <div class="sketch-text animated zoomIn">
                    <h1 class="sketch-content" data-content="N">N</h1>
                    <h1 class="sketch-content" data-content="O">O</h1>
                    <h1 class="sketch-content" data-content="I">I</h1>
                    <h1 class="sketch-content" data-content="S">S</h1>
                    <h1 class="sketch-content" data-content="I">I</h1>
                    <h1 class="sketch-content" data-content="V">V</h1>
                    <h1 class="sketch-content" data-content="R">R</h1>
                    <h1 class="sketch-content" data-content="O">O</h1>
                    <h1 class="sketch-content" data-content="T">T</h1>
                    <h1 class="sketch-content" data-content="R">R</h1>
                    <h1 class="sketch-content" data-content="A">A</h1>
                    <h1 class="sketch-content" data-content="C">C</h1>
                </div>
            </div>
            <div class="col-md-5 col-sm-5 col-xs-5 head-image">
                <div class="image">
                    <img class="img-responsive animated bounceInDown">
                </div>
            </div>
        </div>

    </header>

    <!-- 社团介绍 -->
    <section class="introduce" id="about">
        <div class="row about-image">
            <div class="col-md-5 col-sm-5 col-xs-5 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 about-text">
                <span class="about-Chinese">关于</span>
                <span class="about-English">About</span>
                <div class="about-detail">
                    <p>我们的梦想是开发出完善的武大地理信息系统；我们希望成为武大GIS的领先者、传播者；我们一直在路上</p>
                    <span><b>全称：</b>武汉大学CARTOVISION慧图社</span><br>
                    <span><b>前身：</b>慧图社工作室</span><br>
                    <span><b>年龄：</b>3</span><br>
                    <span><b>研究方向：</b>地信制图、GIS开发</span><br>
                    <span><b>指导老师：</b>蔡忠亮教授</span><br>
                    <span><b>团队人数：</b>56+</span><br>
                    <span><b>团队精神：</b>自强、弘毅、求是、拓新</span><br>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 info-image">
                <img src="${path}/image/age.png" style="width: 80%;" class="img-responsive">
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 info-image">
                <img src="${path}/image/num.png" style="width: 80%;" class="img-responsive">
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 info-image">
                <img src="${path}/image/direction.png" style="width: 80%;" class="img-responsive">
            </div>
        </div>
    </section>

    <!-- 以往作品 -->
    <section class="work" id="wor">
        <div class="first-work">
            <div class="row work-image">
                <div class="col-md-1 col-sm-1 col-xs-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 work-text">
                    <span class="work-Chinese">作品</span>
                    <span class="work-English">Work</span>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-4 col-md-offset-2 col-sm-offset-2 col-xs-offset-2 work-text">
                    <p class="text-center">
                        三年以来，在校团委的正确领导和院系的大力支持下，我们已经取得了十分丰厚的成果，我们开发出了武大官网的校园地图，在武大GIS系统建设方面也有了丰富的经验。</p>
                </div>
            </div>
            <div class="row work-image">
                <h4 class="text-center">example</h4>
                <div class="Wrapper Wrapper_flex_center" style="margin-top: 60px;">
                    <div class="TemplateLgallery" data-lgallery="${path}/image/map.png" data-lglabel="平面图" data-lghover="300">
                        <div class="TemplateLgallery-Item">
                            <img src="${path}/image/map.png" alt="Witcher"/>
                        </div>
                    </div>

                    <div class="TemplateLgallery" data-lghover="300"
                         data-lgallery="${path}/image/map2.png"
                         data-lglabel="卫星图" data-lgdescription="">
                        <div class="TemplateLgallery-Item">
                            <img src="${path}/image/map2.png" alt="Witcher"/>
                        </div>
                    </div>

                    <div class="TemplateLgallery" data-lghover="300"
                         data-lgallery="${path}/image/map3.png"
                         data-lglabel="全景图" data-lgdescription="使用无人机对武大进行了景点的采集">
                        <div class="TemplateLgallery-Item">
                            <img src="${path}/image/map3.png" alt="Witcher"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="second-work">
            <div class="row second-work-image">
                <div class="second-work-text">
                    <h1>优秀的团队是我们成功的最大因素</h1>
                    <h3>我们相互鼓励、相互学习，拥有共同的热爱</h3>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="animated green">
                        <p class="big">56</p>
                        <p>名GIS专业人才</p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="animated black">
                        <p class="big">11</p>
                        <p>项国家级比赛奖项</p>
                        <p class="big">5</p>
                        <p>项省级比赛奖项</p>
                        <p class="big">n</p>
                        <p>篇学术论文发表</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 社团架构 -->
    <section class="structure" id="struct">
        <div class="row structure-image" style="padding-bottom: 0">
            <div class="col-md-5 col-sm-5 col-xs-5 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 structure-text">
                <span class="structure-Chinese">架构</span>
                <span class="structure-English">Structure</span>
            </div>
        </div>
        <div class="row structure-image">
            <div class="col-md-5 col-sm-5 col-xs-5 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <p class="map-design">地图设计部</p>
                <p class="map-design-detail">
                    慧图地图设计部主要负责地图制图产品、UI、UE和开发产品的设计，在这里，你将学到很多地图制图方法，部门内部将不定期举办小课堂，帮助部门成员掌握常用制图软件如Arcmap、Coreldraw、Photoshop的使用。</p>
            </div>
            <div class="col-md-5 col-sm-5">
                <img src="${path}/image/app/photoshop.svg" class="img-responsive map-design-image">
                <img src="${path}/image/app/premiere.svg" class="img-responsive map-design-image">
                <img src="${path}/image/app/illustrator.svg" class="img-responsive map-design-image">
                <img src="${path}/image/app/dreamweaver.svg" class="img-responsive map-design-image">
                <img src="${path}/image/app/after-effects.svg" class="img-responsive map-design-image">
                <img src="${path}/image/app/indesign.svg" class="img-responsive map-design-image">
                <img src="${path}/image/app/ArcMap.png" class="img-responsive map-design-image">
            </div>
        </div>
        <div class="row structure-image">
            <div class="col-md-5 col-sm-5 col-xs-5 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <p class="code">程序开发部</p>
                <p class="code-detail">
                    慧图程序开发部主要负责项目的设计与开发，涵盖web端、Android端、IOS端、小程序等，开发并维护校官网地图产品，并以此为基础，融入当下阶段流行技术，开发出实用有趣的校园产品。在这里，你将学会一系列的程序开发方法，提升程序开发水平。</p>
            </div>

            <div class="col-md-5 col-sm-5">
                <img src="${path}/image/app/android.svg" class="img-responsive code-image">
                <img src="${path}/image/app/wechat.svg" class="img-responsive code-image">
                <img src="${path}/image/app/worldwide.svg" class="img-responsive code-image">
                <img src="${path}/image/app/internet.svg" class="img-responsive code-image">
            </div>
        </div>
        <div class="row structure-image">
            <div class="col-md-5 col-sm-5 col-xs-5 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <p class="thing">综合事务部</p>
                <p class="thing-detail">慧图综合事务部主要负责社团内部建设、外联、财务管理等工作，内设策划、宣传、财务、执行、常务五个职位。</p>
            </div>
            <div class="col-md-5 col-sm-5">
            </div>
        </div>
    </section>
    <!-- 联系我们 -->
    <section class="contact" id="cont">
        <div class="row contact-image" style="padding-bottom: 0;">
            <div class="col-md-11">
                <div class="contact-English col-md-offset-1">
                    <span>Sign Up</span>
                </div>
                <hr class="division" align="left">
            </div>
            <div class="col-md-1 contact-Chinese">
                <span>报名</span>
            </div>
        </div>
        <div class="row contact-image">
            <div class="col-md-2 col-sm-2 col-xs-2 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 contact-summarize">
                <span>2019</span>
                <img src="${path}/image/envelope.jpg" class="img-responsive contact-summarize-image">
            </div>
            <div class="col-md-7 col-sm-7 col-xs-7 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <span class="carto-Chinese">
                    武汉大学慧图社
                </span>
                <span class="carto-English">Whu Cartovision</span>
                <form class="form-horizontal recruit-form">
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-lg my-form" id="name" placeholder="姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="study_num" class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-lg my-form" id="study_num" placeholder="学号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="qq" class="col-sm-2 control-label">QQ</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control my-form input-lg" id="qq" placeholder="QQ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">部门意向</label>
                        <div class="col-sm-10">
                            <select class="form-control input-lg my-form col-sm-10">
                                <option>地图设计部</option>
                                <option>软件开发部</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">自我介绍</label>
                        <div class="col-sm-10">
                            <textarea class="form-control input-lg my-form" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="bg-1">
                                <button type="submit"
                                        class="button button--pipaluk button--inverted button--text-thick btn-submit"
                                        style="margin-left: 10%;padding-bottom: 20px;">
                                    submit
                                </button>
                                <button type="reset"
                                        class="button button--pipaluk button--inverted button--text-thick btn-reset"
                                        style="margin-left: 10%;padding-bottom: 20px;">
                                    reset
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- 版权信息 -->
    <footer class="info">
        <div class="row power-image">
            <div class="col-md-2 col-md-offset-2 col-sm-2 col-xs-2 col-sm-offset-2 col-xs-offset-2">
                <span class="info-title">友情链接</span>
                <br>
                <span class="info-detail"><a href="ogiscience.com">孙一璠</a></span>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-2">
                <span class="info-title">联系方式</span><br>
                <span class="info-detail">迎新群：881407316</span><br>
                <span class="info-detail">微信公众号：武大慧图</span><br>
                <span class="info-detail">技术交流：2309780282@qq.com</span>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2">
                <span class="info-title">关注我们</span>
                <img src="${path}/image/tencent.jpg" class="img-responsive" style="width:60%;">
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2">
                <span class="info-title">迎新群</span>
                <img src="${path}/image/welcome.jpg" class="img-responsive" style="width:60%;">
            </div>
        </div>
        <div class="row rights-image">
            <h5 class="text-center" style="margin-top: 15px">Copyright<i class="fa fa-copyright" aria-hidden="true"></i>2019.CARTOVISION
                All rights reserved.</h5>
        </div>
    </footer>
</div>

<script src="${path}/quote_js/lgallery.min.js"></script>
</body>
</html>