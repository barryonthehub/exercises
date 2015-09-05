<?php session_start(); ?>
<!DOCTYPE html>

<html>
  <head>
	<meta charset="utf-8" />
	<title>PHP Quizzer</title>
	<link rel="stylesheet" text="text/css" href="css/style.css" />
  </head>
  <body>
	<header>
	  <div class="container">
		<h1>PHP Quizzer</h1>
	  </div>
	</header>
	<main>
	  <div class="container">
		<h2>You're Done!</h2>
		<p>Congrats you have finished the test</p>
		<p>Final Score: <?php echo $_SESSION['score']; ?></p>
		<a href="question.php?n=1" class="start">Take Again</a>
	  </div>
	</main>
	  <footer>
		<div class="container">
		  Copyright &copy; 2014, PHP Quizzer
		</div>
	  </footer>
  </body>
</html>
