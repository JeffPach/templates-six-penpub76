
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            <div class="clearfix"></div>
        </div>
    </div>
</section>

<section id="bottom-contact-banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-7 col-lg-8">
                <div class="bcb-text">
                    We seek to create strong partnerships built on trust and results.
                </div>
            </div>
            <div class="col-xs-12 col-md-5 col-lg-4">
                <a href="https://www.penpublishing.com/Contact/">
                    <div class="btn btn-default">
                        Let's Get Started. Contact Us Today
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>

<section id="big-footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 quicklinks">
                <h3>Quick Links</h3>
                <ul>
                    <li>
                        <a href="/">
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="/cart.php">
                            Store
                        </a>
                    </li>
                    <li>
                        <a href="/index.php?rp=/announcements">
                            Announcements
                        </a>
                    </li>
                    <li>
                        <a href="/knowledgebase">
                            Knowledgebase
                        </a>
                    </li>
                    <li>
                        <a href="/serverstatus.php">
                            Network Status
                        </a>
                    </li>
                    <li>
                        <a href="/contact.php">
                            Contact Us
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

<section id="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6">
                <p>Copyright &copy; {$date_year} {$companyname}. All Rights Reserved.</p>
            </div>
            <div class="col-xs-12 col-sm-6">
                <ul>
                    <li>
                        <a href="https://www.penpublishing.com/AboutPen/PrivacyStatement/">
                            Privacy Policy
                        </a>
                    </li>
                    <li>
                        <a href="https://www.penpublishing.com/AboutPen/Legal/">
                            Legal Terms
                        </a>
                    </li>
                    <li>
                        <a href="/knowledgebase">
                            FAQs
                        </a>
                    </li>
                    <li>
                        <a href="/knowledgebase">
                            Support
                        </a>
                    </li>
                    <li>
                        <a href="#" class="back-to-top">
                            <i class="fas fa-chevron-up"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body">
                Loading...
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

{$footeroutput}
<script type="text/javascript">

  (function() {

    var c = document.createElement('script');

    c.type = 'text/javascript'; c.async = true;

    c.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + "track.ppi.net/ChatLink.ashx?config=1&id=stlivechat0";

    var s = document.getElementsByTagName('script')[0];

    s.parentNode.insertBefore(c,s);

  })();

</script>
<script type="text/javascript">
fbq('track', 'ViewContent');
</script>
<div id="stlivechat0"></div>
</body>
</html>
