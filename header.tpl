<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body>

{$headeroutput}

<section id="header">
<div class="social-media-links">
    <div class="container">
	<div class="row">
				<div class="social-links col-xs-12 col-sm-6">
			     <ul>
                        <li>
                            Connect With Us
                            <div class="social-links">
                                <a href="https://www.facebook.com/PenPublishingInteractive/" target="_blank">
                                    <i class="fab fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="https://twitter.com/penpubwichita" target="_blank">
                                    <i class="fab fa-twitter" aria-hidden="true"></i>
                                </a>
								<a href="https://www.youtube.com/user/penpub/featured" target="_blank">
                                    <i class="fab fa-youtube" aria-hidden="true"></i>
                                </a>
                                <a href="https://www.linkedin.com/company/309521/" target="_blank">
                                    <i class="fab fa-linkedin" aria-hidden="true"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
			</div>
	<div class="col-xs-12 col-sm-6">
        <ul class="top-nav">
            {if $languagechangeenabled && count($locales) > 1}
                <li>
                    <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                        {$activeLocale.localisedName}
                        <b class="caret"></b>
                    </a>
                    <div id="languageChooserContent" class="hidden">
                        <ul>
                            {foreach $locales as $locale}
                                <li>
                                    <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </li>
            {/if}
            {if $loggedin}
                <li>
                    <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                        {$LANG.notifications}
                        {if count($clientAlerts) > 0}
                            <span class="label label-info">{lang key='notificationsnew'}</span>
                        {/if}
                        <b class="caret"></b>
                    </a>
                    <div id="accountNotificationsContent" class="hidden">
                        <ul class="client-alerts">
                        {foreach $clientAlerts as $alert}
                            <li>
                                <a href="{$alert->getLink()}">
                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                    <div class="message">{$alert->getMessage()}</div>
                                </a>
                            </li>
                        {foreachelse}
                            <li class="none">
                                {$LANG.notificationsnone}
                            </li>
                        {/foreach}
                        </ul>
                    </div>
                </li>
				<li class="primary-action view-cart">
                    <a href="{$WEB_ROOT}/cart.php?a=view" class="btn">
                        {$LANG.viewcart}
                    </a>
                </li>
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/logout.php" class="btn">
                        {$LANG.clientareanavlogout}
                    </a>
                </li>
            {else}
                <li>
                    <a href="{$WEB_ROOT}/clientarea.php">{$LANG.login}</a>
                </li>
                {if $condlinks.allowClientRegistration}
                    <li>
                        <a href="{$WEB_ROOT}/register.php">{$LANG.register}</a>
                    </li>
                {/if}
                <li class="primary-action view-cart">
                    <a href="{$WEB_ROOT}/cart.php?a=view" class="btn">
                        {$LANG.viewcart}
                    </a>
                </li>
            {/if}
            {if $adminMasqueradingAsClient || $adminLoggedIn}
                <li>
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                        <i class="fas fa-sign-out"></i>
                    </a>
                </li>
            {/if}
        </ul>
		</div>
		</div>
    </div>
</div>
	<div class="main-header">
	        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-lg-3 logo">

                 {if $assetLogoPath}
					<a href="{$WEB_ROOT}/index.php" class="logo"><img src="{$assetLogoPath}" alt="{$companyname}"></a>
				{else}
					<a href="{$WEB_ROOT}/index.php" class="logo logo-text">{$companyname}</a>
				{/if}

                </div>
                <div class="contact-items">
                    <div class="contact-box">
                        <div class="icon-box">
                            <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
                        </div>
                        <ul>
                            <li>
                                <a href="http://maps.google.com/?q=239+South+Pattie+Street,+Wichita,+KS+67211" target="blank">
                                    <strong>239 S Pattie St, Suite 3</strong><br />
                                    Wichita, KS 67211
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="contact-box">
                        <div class="icon-box">
                            <i class="fas fa-mobile-alt" aria-hidden="true"></i>
                        </div>
                        <ul>
                            <li>
                                <a href="tel:316-651-0551">
                                    <span style="font-weight: 700;">Call Us</span><br />
                                    316.651.0551
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="contact-box">
                        <div class="icon-box">
                            <i class="far fa-envelope" aria-hidden="true"></i>
                        </div>
                        <ul>
                            <li>
                                <a href="mailto:sales@penpublishing.com">
                                    <span style="font-weight: 700;">Email Us</span><br />
                                    sales@penpublishing.com
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
</section>

<section id="main-menu">

    <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <!--<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>-->

            <!-- Collect the nav links, forms, and other content for toggling -->

			<div class="row hidden-lg hidden-md visible-sm visible-xs">
				<div class="col-xs-3 mobile-logo">
					<a href="/">
						<img src="/assets/img/mobilelogo.png" />
					</a>
				</div>
				<div class="col-xs-2 mobile-icon">
					<a href="http://maps.google.com/?q=239+South+Pattie+Street,+Wichita,+KS+67211" target="blank">
						<i class="fas fa-map-marker-alt" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-xs-2 mobile-icon">
					<a href="tel:316-651-0551">
						<i class="fas fa-mobile-alt" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-xs-2 mobile-icon">
					<a href="mailto:sales@penpublishing.com">
						<i class="far fa-envelope" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-xs-3">
				<div class="navbar-header">
					<button type="button" class="hidden-lg hidden-md visible-sm visible-xs navbar-toggle collapsed" data-toggle="collapse" data-target="#primary-nav">
						<div class="sr-only">Toggle navigation</div>
						<i class="fas fa-bars fa-2x" aria-hidden="true"></i>
						<i class="fas fa-times fa-2x" aria-hidden="true"></i>
					</button>
				</div>
				</div>
            </div>

			<div class="collapse navbar-collapse" id="primary-nav">

                <ul class="nav navbar-nav">

                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                </ul>

                <ul class="nav navbar-nav navbar-right">

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                </ul>

            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

</section>

{if $templatefile == 'homepage'}
    <section id="home-banner">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2>{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn search" value="{$LANG.search}" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" name="transfer" class="btn transfer" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>

	<section id="homepage-content">
		<div class="container">
<h1>We're Here to Support Your Business</h1>
<p style="font-size: 18px;">
    Are you tired of dealing with multiple vendors for email, hosting, domains and online marketing? At Pen Publishing Interactive we take care of our partners from initial set-up to on-going support. Explore our services and <a href="https://www.penpublishing.com/contact/">contact us to get started</a>.
</p>
<hr />
<div class="row home-content-boxes">
    <div class="office-products col-xs-12 col-sm-4">
        <div class="content-box">
            <img class="grey-icon" src="/assets/img/Image Icons/office-365-grey.png" />
			<img class="blue-icon" src="/assets/img/Image Icons/office-365-blue.png" />
            <h2>Office 365</h2>
            <p>
                We offer customers a wide range of Microsoft Office 365 packages.
            </p>
            <a href="/cart.php?gid=1">
                <div class="btn btn-default">
                    Learn More
                </div>
            </a>
        </div>
    </div>
    <div class="col-xs-12 col-sm-4">
        <div class="content-box">
            <i class="fas fa-cloud" aria-hidden="true"></i>
            <h2>Web Hosting</h2>
            <p>
                We provide secure hosting with no third-party companies involved. 
            </p>
            <a href="/cart.php?gid=5">
                <div class="btn btn-default">
                    Learn More
                </div>
            </a>
        </div>
    </div>
    <div class="col-xs-12 col-sm-4">
        <div class="content-box">
            <i class="fab fa-wordpress" aria-hidden="true"></i>
            <h2>WordPress Hosting</h2>
            <p>
                We provide secure WordPress hosting and management services.
            </p>
            <a href="/cart.php?gid=13">
                <div class="btn btn-default">
                    Learn More
                </div>
            </a>
        </div>
    </div>
</div>
		</div>
	</section>


    <!--<div class="home-shortcuts">
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs text-center">
                    <p class="lead">
                        {$LANG.howcanwehelp}
                    </p>
                </div>
                <div class="col-sm-12 col-md-8">
                    <ul>
                        {if $registerdomainenabled || $transferdomainenabled}
                            <li>
                                <a id="btnBuyADomain" href="domainchecker.php">
                                    <i class="fa fa-globe"></i>
                                    <p>
                                        {$LANG.buyadomain} <span>&raquo;</span>
                                    </p>
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a id="btnOrderHosting" href="cart.php">
                                <i class="fa fa-hdd-o"></i>
                                <p>
                                    {$LANG.orderhosting} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnMakePayment" href="clientarea.php">
                                <i class="fa fa-credit-card"></i>
                                <p>
                                    {$LANG.makepayment} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnGetSupport" href="submitticket.php">
                                <i class="fa fa-envelope-o"></i>
                                <p>
                                    {$LANG.getsupport} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>-->
{/if}

{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
