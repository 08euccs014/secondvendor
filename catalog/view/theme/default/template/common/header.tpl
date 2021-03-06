<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/tether.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Lato:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav class="navbar " id="top">

  <div class="navbar-toggler hidden-sm-up">
    <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#exCollapsingNavbar2">
      &#9776;
    </button>
    <?php if ($logo) { ?>
    <a class="navbar-brand pull-xs-right"  href="<?php echo $home; ?>">
      

        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
          </a>

    <?php } else { ?>
          <h2><<a class="navbar-brand pull-xs-right" href="<?php echo $home; ?>"><?php echo $name; ?></a></h2>
    <?php } ?>

  </div>
  <div class="container collapse navbar-toggleable-xs" id="exCollapsingNavbar2"> 
    
    <?php if ($logo) { ?>
    <a class="navbar-brand"  href="<?php echo $home; ?>">
      

        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
          </a>

    <?php } else { ?>
          <h2><<a class="navbar-brand" href="<?php echo $home; ?>"><?php echo $name; ?></a></h2>
    <?php } ?>

    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right p-t-1">
      <ul class="nav navbar-nav pull-xs-right">


        <li class="nav-item">
          <a class="btn btn-secondary nav-link" href="<?php echo $want_tosell; ?>" title="<?php echo $text_want_tosell; ?>">
            <?php echo $text_want_tosell; ?>
          </a>
        </li>

        <!-- <li><a href="<?php //echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $telephone; ?></span></li> -->
        <li class="nav-item"><a class="nav-link" href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>

      <?php if ($logged) { ?>
        <li class="nav-item dropdown">
          <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <a class="dropdown-item" href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
            <a class="dropdown-item" href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
            <a class="dropdown-item" href="<?php echo $transaction; ?>"><?php echo $text_transaction;?></a>
            <a class="dropdown-item" href="<?php echo $download; ?>"><?php echo $text_download; ?></a>
            <a class="dropdown-item" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
          </ul>
        </li>
        <?php } else { ?>

        <li class="nav-item  dropdown">
        <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="nav-link dropdown-toggle" data-toggle="dropdown"><span class="hidden-xs hidden-sm hidden-md">Sign Up</span> <span class="caret"></span></a>
            <ul class="dropdown-menu text-sm-center">
              <a class="dropdown-item" href="<?php echo $register; ?>">
                Sign Up
             
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="<?php echo $login; ?>">
              <small>or</small>
            <br/> 
              I will Login</a>
            </ul>
        </li>

        <?php } ?>

        <!-- <li><a href="<?php //echo $checkout; ?>" title="<?php //echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_checkout; ?></span></a></li> -->
      </ul>
    </div>
  </div>
</nav>
<!-- <header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php //if ($logo) { ?>
          <a href="<?php //echo $home; ?>"><img src="<?php //echo $logo; ?>" title="<?php //echo $name; ?>" alt="<?php //echo $name; ?>" class="img-responsive" /></a>
          <?php //} else { ?>
          <h1><a href="<?php //echo $home; ?>"><?php //echo $name; ?></a></h1>
          <?php //} ?>
        </div>
      </div>
      <div class="col-sm-5"><?php //echo $search; ?>
      </div>
      <div class="col-sm-3"><?php //echo $cart; ?></div>
    </div>
  </div>
</header> -->
<?php if ($categories && count($categories) > 1) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
