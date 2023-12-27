<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>G-market</title>
    <link rel="stylesheet" href="../resources/css/index_G.css">
</head>
<body>
    <div id="wrap">
    	<c:import var="header_G" url="../common/header_G_1.jsp"/>
    	<c:import var="nav" url="../common/nav_G_1.jsp"/>
    	<c:import var="footer" url="../common/footer_G.jsp"/>
    	${header_G }
    	${nav }
        <%-- <%@ include file="../common/header_G_1.jsp" %>
        <%@ include file="../common/nav_G_1.jsp" %> --%>
        <article>
            <div id="article">
                <a href="http://item.gmarket.co.kr/Item?goodscode=3215990872&ver=20231109">
                    <img src="../resources/css/img/추천1.png" alt="추천상품1">
                </a>
                <a href="http://item.gmarket.co.kr/Item?goodscode=2691771311&ver=20231109">
                    <img src="../resources/css/img/추천2.png" alt="추천상품2">
                </a>
                <a href="http://item.gmarket.co.kr/Item?goodscode=2005012215&ver=20231109">
                    <img src="../resources/css/img/추천3.png" alt="추천상품3">
                </a>
            </div>
        </article>
        <section>
            <div id="section">
                <div id="bestitem1">
                    <h3>추천 카테고리 인기상품</h3>
                    <div id="bestitem1-1" class="kategorie-food">
                        <h1>1.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2522866014">
                            <img src="../resources/css/img/food1.png" alt="음식1" id="food1" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2522866014">
                            <img src="../resources/css/img/food1-1.png" alt="음식1-1" id="food1-1" class="food-info">
                        </a>
                    </div>
                    <div id="bestitem1-2" class="kategorie-food">
                        <h1>2.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3269782898">
                            <img src="../resources/css/img/food2.png" alt="음식2" id="food2" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3269782898">
                        <img src="../resources/css/img/food2-1.png" alt="음식2-1" id="food2-1" class="food-info">
                        </a>
                    </div>
                    <div id="bestitem3-1" class="kategorie-food">
                        <h1>3.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3041094770">
                            <img src="../resources/css/img/food3.png" alt="음식3" id="food3" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3041094770">
                            <img src="../resources/css/img/food3-1.png" alt="음식3-1" id="food3-1" class="food-info">
                        </a>
                    </div>

                </div>
                <div id="bestitem2">
                    <h3>오늘만 특별 할인</h3>
                    <div id="bestitem1-2" class="kategorie-food">
                        <h1>1.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2887498096&buyboxtype=ad">
                            <img src="../resources/css/img/food4.png" alt="음식4" id="food4" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2887498096&buyboxtype=ad">
                            <img src="../resources/css/img/food4-1.png" alt="음식4-1" id="food4-1" class="food-info">
                        </a>
                    </div>
                    <div id="bestitem2-2" class="kategorie-food">
                        <h1>2.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2595295163&buyboxtype=ad">
                            <img src="../resources/css/img/food5.png" alt="음식5" id="food5" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2595295163&buyboxtype=ad">
                            <img src="../resources/css/img/food5-1.png" alt="음식5-1" id="food5-1" class="food-info">
                        </a>
                    </div>
                    <div id="bestitem3-2" class="kategorie-food">
                        <h1>3.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2292957728">
                            <img src="../resources/css/img/food6.png" alt="음식6" id="food6" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=2292957728">
                            <img src="../resources/css/img/food6-1.png" alt="음식6-1" id="food6-1" class="food-info">
                        </a>
                    </div>
                </div>
                <div id="bestitem3">
                    <h3>자주 본 카테고리 인기상품</h3>
                    <div id="bestitem1-3" class="kategorie-food">
                        <h1>1.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3299425392">
                            <img src="../resources/css/img/food7.png" alt="음식7" id="food7" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3299425392">
                            <img src="../resources/css/img/food7-1.png" alt="음식7-1" id="food7-1" class="food-info">
                        </a>
                    </div>
                    <div id="bestitem2-3" class="kategorie-food">
                        <h1>2.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3210860142">
                            <img src="../resources/css/img/food8.png" alt="음식8" id="food8" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=3210860142">
                            <img src="../resources/css/img/food8-1.png" alt="음식8-1" id="food8-1" class="food-info">
                        </a>
                    </div>
                    <div id="bestitem3-3" class="kategorie-food">
                        <h1>3.</h1>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=1555535298&buyboxtype=ad">
                            <img src="../resources/css/img/food9.png" alt="음식9" id="food9" class="food1-img">
                        </a>
                        <a href="http://item.gmarket.co.kr/Item?goodscode=1555535298&buyboxtype=ad">
                            <img src="../resources/css/img/food9-1.png" alt="음식9-1" id="food9-1" class="food-info">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        ${footer }

    </div>
    
</body>
</html>