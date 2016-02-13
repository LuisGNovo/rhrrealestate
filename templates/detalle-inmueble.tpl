<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Realty Inc. - 404 Page not found</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- JQUERY ASSETS -->
    <script src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="assets/js/slimbox2.js"></script>
    <script type="text/javascript" src="assets/js/easySlider1.7.js"></script>

    <!-- CSS ASSETS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/slimbox2.css" type="text/css" media="screen" />
    <link href="assets/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css" media="screen" />

    <!-- GOOGLE WEBFONTS -->
    <link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Gudea' rel='stylesheet' type='text/css'>

    <script type="text/javascript">
        $(function() {
            $(".image").click(function() {
                var image = $(this).attr("rel");
                $('#image').hide();
                $('#image').fadeIn('slow');
                $('#image').html('<img src="' + image + '"/>');
                return false;
            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            $("#slider").easySlider({
                auto: true,
                continuous: true,
                controlsShow:    false,
            });
        });
    </script>

    <style type="text/css">
        body {
            background: url("assets/img/bg.jpg") repeat  #F3F1F8;
            padding-top: 0px;
        }

        .thumb{
            float:left;
            margin-right:10px;
            margin-top:10px;}

    </style>

   <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->

    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="index.htm">Realty Inc.</a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li><a href="index.htm">Home</a></li>
                    <li><a href="properties.htm">Properties</a></li>
                    <li><a href="contact.htm">Contact</a></li>
                    <li><a href="properties.htm">Search</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Features
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="404.htm">Error Page</a>
                            </li>
                            <li>
                                <a href="contact.htm">Contact Page</a>
                            </li>
                            <li>
                                <a href="properties.htm">Gallery</a>
                            </li>
                            <li>
                                <a href="listing.htm">Listing Page</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">Separated link</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav pull-right">
                    <li><a href="#">Link</a></li>
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>


                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    <li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<!--/ End Slider/Search Block -->

<div class="container">


    <br>
    <div class="row">
        <div class="span9"><div class="well">

                <div class="container">

                    <div class="row">
                        <div class="span8">


                            <div class="page-header">
                                <h1>
                                    Peakview Property
                                    <small>- 4 Bedroom/3 Baths</small>
                                    <span style="font-size:23px; padding:10px; float:right;" class="label label-success">$340,000</span>
                                </h1>
                            </div>

                            <div id="image"><img src="assets/img/1.png" border="0"/></div>
                            <a href="#" rel="assets/img/1.png" class="image"><img src="assets/img/t1.png" class="thumb" border="0"/></a>
                            <a href="#" rel="assets/img/2.png" class="image"><img src="assets/img/t2.png" class="thumb" border="0"/></a>
                            <a href="#" rel="assets/img/3.png" class="image"><img src="assets/img/t3.png" class="thumb" border="0"/></a>
                            <a href="#" rel="assets/img/4.png" class="image"><img src="assets/img/t4.png" class="thumb" border="0"/></a>






                        </div>

                    </div>
                    <br>

                    <div class="page-header">
                        <h3>
                            Description
                        </h3>
                    </div>

                    <div class="container">


                        <div class="row">
                            <div class="span8"><div class="well">

                                    <p>Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text<br> of the printing.Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing.</p>
                                    <p>Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing.Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing.</p>
                                </div></div>
                        </div>
                    </div>

                </div>

            </div></div>




        <div class="span3">

            <div class="nav nav-tabs nav-stacked" style="background:white; font-size:11px; ">
                <li class="active" style="font-size:12px; font-weight:bold;">
                    <a href="#">Explore</a>
                </li>
                <li>

                    <a href="#"><i style="padding-right:10px; margin-top:2px" class="icon-envelope"></i>Email this Listing</a>
                </li>
                <li>
                    <a href="#"><i style="padding-right:10px; margin-top:2px" class="icon-print"></i>Print Listing</a>
                </li>

                <li>
                    <a href="#"><i style="padding-right:10px; margin-top:2px" class="icon-star"></i>Add to Favourites</a>
                </li>
                <li>
                    <a href="#"><i style="padding-right:10px; margin-top:2px" class="icon-search"></i>View Similar Properties</a>
                </li>


            </div>


            <ul class="nav nav-tabs nav-stacked" style="background:white; font-size:11px; ">
                <li class="active" style="font-size:12px; font-weight:bold;">
                    <a href="#">Contact</a>
                </li>
                <li>
                    <div style="padding:10px;">
                        <input class="span2" type="text" placeholder="Name">
                        <input class="span2" type="text" placeholder="Phone Number">
                        <input class="span2" type="text" placeholder="Email">
                        <textarea class="input-large" id="textarea" rows="3"></textarea>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary btn-medium">Send</button>
                        </div>
                    </div>

                </li>

            </ul>

            <ul class="nav nav-tabs nav-stacked" style="background:white; font-size:11px; ">
                <li class="active" style="font-size:12px; font-weight:bold;">
                    <a href="#">Note</a>
                </li>
                <li>
                    <div style="padding:10px;">

                        Lorem Ipsum is simply dummy text of the printing .Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text of the printing .Lorem Ipsum is simply dummy text of the printing .Lorem Ipsum is simply dummy text of the printing .


                    </div>
                </li>

            </ul>
        </div>
    </div>

    <!-- End Slider/Search Block -->









</div> <!-- /container -->







<!-- Start Footer -->




<div class="secfoot">

    <div class="container">
        <div class="row">
            <div class="span4">

                <h2 class="headingfoot">latest news</h2>

                <ul class="unstyled">

                    <li>

                        <h4 class="footlinks"><a href="#">Finding the Right Property</a><i style="padding-left:5px; margin-top:5px;" class="icon-chevron-right icon"></i></h4>

                        <p class="foottext"> Lorem Ipsum is simply dummy text of the printing.</p>
                    </li>

                    <li>

                        <h4 class="footlinks"><a href="#">Getting into Commercial Real Estate</a><i style="padding-left:5px; margin-top:5px;" class="icon-chevron-right icon"></i></h4>

                        <p class="foottext">Lorem Ipsum is simply dummy text of the printing.</p>
                    </li>

                    <li>

                        <h4 class="footlinks"><a href="#">Investing in Foreclosures</a><i style="padding-left:5px; margin-top:5px;" class="icon-chevron-right icon"></i></h4>


                        <p class="foottext"> Lorem Ipsum is simply dummy text of the printing.</p>
                    </li>
                </ul>



            </div>
            <div class="span4">
                <h2 class="headingfoot">about us</h2>

                <ul class="unstyled">

                    <li>




                        <p class="foottext"> Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing. <a href="#">Contact us</a> for more information.</p>
                    </li>

                    <li>
                        <hr>

                        <ul class="thumbnails">
                            <li class="span2">

                                <a class="lightbox" href="assets/img/smallthumbs/thumb_1.jpg" title="Beautiful, isn't it?"> <img class="thumbnail"  src="assets/img/thumb_about.jpg" alt=""></a>

                            </li>
                            <li class="span2">
                                <a class="lightbox" href="assets/img/smallthumbs/thumb_2.jpg" >
                                    <img src="assets/img/thumb_about2.jpg" alt=""  class="thumbnail">
                                </a>
                            </li>

                        </ul>

                    </li>


                </ul>
            </div>
            <div class="span4">

                <h2 class="headingfoot">get in touch</h2>

                <ul class="unstyled">

                    <li class="foot_list">

                        <span class="foot_contact"><i class="icon-envelope icon iconsin"></i><a href="#"> realtyinc@example.com</a></span>
                    </li>

                    <li  class="foot_list">

                        <span class="foot_contact"><i class="icon-user icon iconsin"></i>P +1.888-222.3333</span>
                    </li>

                    <li class="foot_list">

                        <span class="foot_contact"><i class="icon-map-marker icon iconsin"></i>55 Somewhere Street. Suite 200, Canada </span>
                    </li>

                    <li class="foot_list">

                        <span class="foot_contact"><i class="icon-time icon iconsin"></i>Office Hours: (Monday-Friday) 8AM - 6PM </span>
                    </li>


                    <li class="foot_logo">

                        <a class="btnlogo"></a>    </li>



                </ul>

            </div>
        </div>
    </div>
</div>


<div class="footblock">
    <div class="container">
        <div class="row">


            <div class="span12">
                <p class="foot_copy">&copy; 2012 Realty Inc.<span style="font-size:11px;"> - All Rights Reserved.</span> </p>

            </div>

        </div>
    </div>
</div>

<!-- End Footer -->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="assets/js/bootstrap.js"></script>

</body>
</html>