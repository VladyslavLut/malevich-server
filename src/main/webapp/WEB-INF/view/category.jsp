<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/static/css/materialize.min.css"/>" media="screen,projection" />

	<link href="<c:url value="/resources/static/css/wrapper.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/header.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/menu.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/footer.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/category.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/fixed_header.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/topbutton.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/entry.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/modal_dishcard.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/static/css/busket.css"/>" rel="stylesheet">

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	 crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&amp;subset=cyrillic" rel="stylesheet">
	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--Import materialize.css-->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
	<script type="text/javascript" src="<c:url value="/resources/static/js/materialize.min.js"/>"></script>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Меню ресторана | MALEVICH ресторан</title>
	<link rel="shortcut icon" href="<c:url value="/resources/static/images/icon.ico"/>" type="image/x-icon">
</head>

<body>
<!--Корзина-->
<div class="cart">
    <div class="cart-head">
      <div class="icon-close">
        <a href="#">
          <i class="fas fa-chevron-circle-right"></i>
        </a>
      </div>
      <div class="cart-title">Заказ</div>
    </div>
    <div class="cart-list">

    </div>
    <div class="cart-footer">
      <div class="cart-sum">
        <p>Сумма:</p>
        <p>0</p>
      </div>
      <div class="cart-button">
        Оформить
      </div>
    </div>
  </div>
<!--Корзина-->
	<header>
		<div class="firstRow">
			<div class="socIcon">
				<a href="https://www.instagram.com/">
					<i class="fab fa-instagram fa-2x" aria-hidden="true" style="color: white;"></i>
				</a>
				<a href="https://www.facebook.com/">
					<i class="fab fa-facebook-square fa-2x" aria-hidden="true" style="color:white ;"></i>
				</a>
				<a href="https://twitter.com/">
					<i class="fab fa-twitter-square fa-2x" aria-hidden="true" style="color: white;"></i>
				</a>
				<a href="https://plus.google.com/discover">
					<i class="fab fa-google-plus-square fa-2x" aria-hidden="true" style="color: white;"></i>
				</a>
			</div>

			<div class="logo">
				<a href="<c:url value="/"/>" title="На главную страничку">
					<span>
						<span style="color: #ea2727">M</span>ALEVICH</span>
				</a>
			</div>

			<div class="ProfileAndBasket">
				<a class="temp" href="#" title="Войти в кабинет пользователя">
					<div class="navBtn"  onclick="PopUpShow()">
						<i class="fa fa-user fa-fw" aria-hidden="true"></i>
						<span>Вход</span>
					</div>

				</a>
				<a class="temp" href="#" title="Отобразить карзину">
					<div class="navBtn busket-btn">
						<i class="fa fa-shopping-basket fa-fw" aria-hidden="true"></i>
						<span>Корзина</span>
					</div>
				</a>
			</div>
		</div>

		<div class="secondRow" style="z-index: 100;">
			<div class="nav-menu">
				<ul class="menu">
					<li class="menu__list">
						<a href="<c:url value="menu"/>">МЕНЮ
							<i class="down"></i>
						</a>
						<ul>
							<li>
								<a href="<c:url value="category"/>">Пицца</a>
							</li>
							<li>
								<a href="#">Бургеры</a>
							</li>
							<li>
								<a href="#">Суши</a>
							</li>
							<li>
								<a href="#">Закуски</a>
							</li>
							<li>
								<a href="#">Салаты</a>
							</li>
							<li>
								<a href="#">Паста</a>
							</li>
							<li>
								<a href="#">Десерты</a>
							</li>
							<li>
								<a href="#">Напитки</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="<c:url value="info"/>">ДОСТАВКА И ОПЛАТА</a>
					</li>
					<li>
						<a href="<c:url value="reservation"/>">ОНЛАЙН БРОНЬ</a>
					</li>
					<li class="menu__list">
						<a href="<c:url value="/"/>">О НАС
							<i class="down"></i>
						</a>
						<ul class="dropdown-menu_about">
							<li>
								<a href="<c:url value="/"/>#kitchen">Кухня</a>
							</li>
							<li>
								<a href="<c:url value="/"/>#staff">Шеф-повары</a>
							</li>
							<li>
								<a href="<c:url value="/"/>#restaurant">Рестораны</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</header>

	<div class="fixed" style="z-index: 100;">
		<div class="fixed-block">
			<div class="fixed-menu-logo">
				<a href="<c:url value="/"/>" title="На главную страничку">
					<span>
						<span style="color: red">M</span>ALEVICH</span>
				</a>
			</div>
			<div class="fixed-menu">
				<ul>
					<li class="menu__list">
						<a href="<c:url value="menu"/>">МЕНЮ
							<i class="down"></i>
						</a>
						<ul>
							<li>
								<a href="<c:url value="category"/>">Пицца</a>
							</li>
							<li>
								<a href="#">Фастфуд</a>
							</li>
							<li>
								<a href="#">Суши</a>
							</li>
							<li>
								<a href="#">Закуски</a>
							</li>
							<li>
								<a href="#">Паста</a>
							</li>
							<li>
								<a href="#">Бизнес-ланч</a>
							</li>
							<li>
								<a href="#">Супы</a>
							</li>
							<li>
								<a href="#">Десерты</a>
							</li>
							<li>
								<a href="#">Напитки</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="<c:url value="info"/>">ДОСТАВКА И ОПЛАТА</a>
					</li>
					<li>
						<a href="<c:url value="reservation"/>">ОНЛАЙН БРОНЬ</a>
					</li>
					<li class="menu__list">
						<a href="<c:url value="/"/>">О НАС
							<i class="down"></i>
						</a>
						<ul>
							<li>
								<a href="<c:url value="/"/>#kitchen">Кухня</a>
							</li>
							<li>
								<a href="<c:url value="/"/>#staff">Шеф-повары</a>
							</li>
							<li>
								<a href="<c:url value="/"/>#restaurant">Рестораны</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="fixed-basket">
				<div class="fixed-navBtn busket-btn">
					<i class="fa fa-shopping-basket fa-fw" aria-hidden="true"></i>
					<span>Корзина</span>
				</div>
			</div>
		</div>
	</div>

	<div class="wrapper">
		<div class="content">
			<div class="block-menu">
				<div class="category">
					<img class="category-icon" src="images/cat_snacks.png">
					<p class="category-name">Закуски</p>
				</div>
				<div class="category">
					<img src="<c:url value="/resources/static/images/cat_pasta.png"/>">
					<p class="category-name">Паста</p>
				</div>
				<div class="category">
					<img src="<c:url value="/resources/static/images/cat_sushi.png"/>">
					<p class="category-name">Суши</p>
				</div>
				<div class="category">
					<img src="<c:url value="/resources/static/images/cat_pizza.png"/>">
					<p class="category-name">Пицца</p>
				</div>
				<div class="category">
					<img src="<c:url value="/resources/static/images/cat_burgers.png"/>">
					<p class="category-name">Бургеры</p>
				</div>
				<div class="category">
					<img src="<c:url value="/resources/static/images/cat_salats.png"/>">
					<p class="category-name">Салаты</p>
				</div>
				<div class="category">
					<img src="<c:url value="/resources/static/images/cat_desserts.png"/>">
					<p class="category-name">Десерты</p>
				</div>
				<div class="category">
					<img src="<c:url value="/resources/static/images/cat_drinks.png"/>">
					<p class="category-name">Напитки</p>
				</div>
			</div>
			<div class="category-bar">
				<div class="breadcrumbs">
					<a href="#">Меню</a>
					<a class="active" href="#">Паста</a>
				</div>
				<div class="sort">
					<p>Сортировать :</p>
					<select>
						<option value="Sony">По популярности</option>
						<option value="Toshiba">По возрастанию цен</option>
						<option value="Acer">По убыванию цен</option>
						<option value="Asus">По алфавиту</option>
					</select>
				</div>
			</div>


			<div id="goods" class="dish-list">
				<div class="dish-card">
					<img class="dish-img" src="<c:url value="/resources/static/images/dish4.jpg"/>">
					<p class="dish-title">Название</p>
					<div class="dish-description">
						Описание арполл порлд рол рол рпол
					</div>
					<p class="dish-cost">568
					</p>
							<div class="order-button" id="button_1" onclick="addToBasket(1, 1)">Заказать</div>
				</div>
				<div class="dish-card">
					<img class="dish-img" src="images/dish4.jpg">
					<p class="dish-title">Название</p>
					<div class="dish-description">
						Описание арполл порлд рол рол рпол
					</div>
					<p class="dish-cost">568
					</p>
							<div class="order-button" id="button_2" onclick="addToBasket(2, 1)">Заказать</div>
				</div>
				<div class="dish-card">
					<img class="dish-img" src="images/dish4.jpg">
					<p class="dish-title">Название</p>
					<div class="dish-description">
						Описание арполл порлд рол рол рпол fghjdkfhgl;jk dsfghjkl sdfghjk sadfhj asdfghj asdfghjk asdtyghujk sdfghjkc gvhjbkl sdfghj
						sdfghj sdfghg vhjbkl vhbjkml,dfghj ::before is exactly the same only it inserts the content before any other content
						in the HTML instead of after. The only reasons to use one over the other are: You want the generated content to come
						before the element content, positionally.
					</div>
					<p class="dish-cost">568
					</p>
							<div class="order-button" id="button_3" onclick="addToBasket(3, 1)">Заказать</div>
				</div>
				<div class="dish-card">
					<img class="dish-img" src="images/dish4.jpg">
					<p class="dish-title">Название</p>
					<div class="dish-description">
						Описание арполл порлд рол рол рпол
					</div>
					<p class="dish-cost">568
					</p>
							<div class="order-button" id="button_4" onclick="addToBasket(4, 1)">Заказать</div>
				</div>
				<div class="dish-card">
					<img class="dish-img" src="images/dish4.jpg">
					<p class="dish-title">Название</p>
					<div class="dish-description">
						Описание арполл порлд рол рол рпол
					</div>
					<p class="dish-cost">568
					</p>
							<div class="order-button" id="button_20" onclick="addToBasket(20, 2)">Заказать</div>
				</div>
			</div>
		</div>
		<a href="#" class="scrollup">
			<i class="fa fa-arrow-circle-up"></i>
		</a>

		<div class="b-popup" id="popup1">
			<div class="b-popup-content">
			  <p>
				<a class="close-button" href="#" onclick="PopUpHide()">
				  <i class="fa fa-window-close" aria-hidden="true"></i>
				</a>
			  </p>
			  <h3 class="entry-title">Добро пожаловать в MALEVICH</h3>
			  <div class="entry-col">
				<div>
				  <div class="row">
					<div class="input-field col s12">
					  <input class="input-user-data" id="entrylogin" type="email" class="validate">
					  <label for="entrylogin">Логин или телефон</label>
					</div>
				  </div>
				  <div class="row">
					<div class="input-field col s12">
					  <input class="input-user-data" id="entry-password" type="password" class="validate">
					  <label for="entry-password">Пароль</label>
					</div>
				  </div>
				  <div class="entry-button">ВОЙТИ</div>
				</div>
				<div>
				  <p class="entry-label">Впервые на сайте?</p>
				  <div class="entry-button" onclick="PopUp2Show(); PopUpHide();">ЗАРЕГЕСТРИРОВАТЬСЯ</div>
				  <p class="entry-label-desc">После регистрации заказ и брониование - на 25% быстрее</p>
				</div>
			  </div>
			</div>
		  </div>
		  <div class="b-popup" id="popup2">
			<div class="b-popup-content2">
			  <p>
				<a class="close-button" href="#" onclick="PopUp2Hide()">
				  <i class="fa fa-window-close" aria-hidden="true"></i>
				</a>
			  </p>
			  <form id="form">
				<h3 class="entry-title">Регистрация</h3>
				<div class="row">
				  <div class="input-field col s12">
					<input class="new-input-user-data" id="reglogin" type="text" class="validate" name="reglogin">
					<label for="reglogin" required="required" aria-required="true">Логин</label>
				  </div>
				</div>
				<div class="row">
				  <div class="input-field col s12">
					<input class="new-input-user-data" id="regname" type="text" class="validate" name="regname">
					<label for="regname" required="required" aria-required="true">Имя</label>
				  </div>
				</div>
				<div class="row">
				  <div class="input-field col s12">
					<input class="new-user-data" id="regtel" type="tel" class="validate" name="regtel">
					<label for="regtel" required="required" aria-required="true">Номер телефона</label>
				  </div>
				</div>
				<div class="row">
				  <div class="input-field col s12">
					<input class="new-input-user-data" id="birthdate" type="date" class="datepicker" name="birthdate">
					<label for="birthdate" class="" required="required" aria-required="true">Дата рождения</label>
				  </div>
				</div>
				<div class="row">
				  <div class="input-field col s12">
					<input class="new-input-user-data" id="regpassword" type="password" class="validate" name="regpassword">
					<label for="regpassword" required="required" aria-required="true">Пароль</label>
				  </div>
				</div>
				<div class="row">
				  <div class="input-field col s12">
					<input class="new-input-user-data" id="confirmpassword" type="password" class="validate" name="confirmpassword">
					<label for="confirmpassword" required="required" aria-required="true">Подтвердите пароль</label>
				  </div>
				</div>
				<div class="entry-button" onclick="PopUp3Show(); PopUp2Hide(); clearRegForm();">ОТПРАВИТЬ</div>
			  </form>
			</div>
		  </div>
		
		  <div class="b-popup" id="popup3">
			<div class="b-popup-content3">
			  <p>
				<a class="close-button" href="#" onclick="PopUp3Hide()">
				  <i class="fa fa-window-close" aria-hidden="true"></i>
				</a>
			  </p>
			  <h3 class="entry-title">Спасибо за регистрацию</h3>
			  <p class="entry-label">Подтверждение будет отправлено на указанный телефон в ближайшее время</p>
			</div>
			</div>
			
			<div class="b-popup" id="popup-dishcard">
				<div class="b-popup-content-dishcard">
					<p>
						<a class="close-button" href="#" onclick="PopUpDishCardHide()">
							<i class="fas fa-times"></i>
						</a>
					</p>
					<img class="dishcard-img" src="images/dish4.jpg">
					<p class="dishcard-title">Название fdghjklkjhgfdsdfghj dfghjkgfds fdg dfghjk sdfghjk sdfghj</p>
					<div class="dishcard-description">Описание арполл порлд рол рол рпол</div>
				</div>
			</div>

		<div class="footer">
			<img class="footer-logo" src="<c:url value="/resources/static/images/logo.png"/>" alt="Малевич">
			<div>
				<p class="footer-company">© 2002 - 2018 MALEVICH
					<br>Все права защищены.
					<br>
					<span class="footer-devlabel">Разработка сайта IMAGINARY TURTLES</span>
				</p>
			</div>

			<div>
				<p class="footer-links">
					<a href="<c:url value="menu"/>">Меню</a>
				</p>
				<p class="footer-links">
					<a href="<c:url value="/"/>">Профиль</a>
				</p>
			</div>
			<div>
				<p class="footer-links">
					<a href="<c:url value="info"/>">Доставка и оплата</a>
				</p>
				<p class="footer-links">
					<a href="<c:url value="reservation"/>">Онлайн бронь</a>
				</p>
			</div>
			<div>
				<p class="footer-links">
					<a href="<c:url value="/"/>">О нас</a>
				</p>
				<p class="footer-links">
					<a href="#"> </a>
				</p>
			</div>
			<div class="footer-social">
				<p class="footer-icons">
					<a href="https://www.instagram.com/?hl=ru">
						<i class="fab fa-instagram"></i>
					</a>
				</p>
				<p class="footer-icons">
					<a href="https://www.facebook.com/">
						<i class="fab fa-facebook-square"></i>
					</a>
				</p>
				<p class="footer-icons">
					<a href="https://www.facebook.com/">
						<i class="fab fa-twitter-square"></i>
					</a>
				</p>
				<p class="footer-icons">
					<a href="https://www.facebook.com/">
						<i class="fab fa-google-plus-square"></i>
					</a>
				</p>
			</div>
		</div>

		<script src="js/fixed_header.js"></script>
		<script type="text/javascript" src="<c:url value="/resources/static/js/menu.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/static/js/topbutton.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/static/js/entryform.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/static/js/registrationform.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/static/js/modal_dishcard.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/static/js/busket.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/static/js/cart.js"/>"></script>

</body>

<footer></footer>