<!DOCTYPE html>
<!--[if IE 7]><html class="no-js ie7"> <![endif]-->
<!--[if IE 8]><html class="no-js ie8"> <![endif]-->
<!--[if gt IE 8]><!--><html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><?php echo $title_for_layout . ' | ' . Configure::read('Site.title'); ?></title>
        <?php
        echo $this->Layout->meta();
        echo $this->Html->meta('favicon.ico', '/img/favicon.ico', array('type' => 'icon'));
        ?>
        <meta name="viewport" content="width=device-width">

        <?php echo $this->Html->css(array('global', 'style', 'theme')); ?>
        <!--[if lte IE 8]>
        <?php echo $this->Html->css('ie'); ?>
        <![endif]-->

        <?php
        echo $this->Html->script(array('modernizr-2.6.2.min', 'jquery.min.js', 'jquery.mousewheel.min.js', 'jquery.carouFredSel-6.2.0-packed.js', 'main.js', 'http://maps.google.com/maps/api/js?sensor=true&language=vi', 'map.js'));
        echo $this->Layout->js();
        echo $scripts_for_layout;
        ?>

    </head>
    <body>
        <div id="wrapper">
            <?php echo $this->element('header'); ?>

            <nav id="menu">
                <div id="menuWrap">
                    <div class="wrap" id="wrap-flag">
                        <div class="flag">
                            <a title="VN" class="flag-vn" href="<?php echo $this->request->here . '?tl=vie'; ?>"></a>
                            <a title="EN" class="flag-en" href="<?php echo $this->request->here . '?tl=eng'; ?>"></a>
                        </div>
                    </div>
                    <?php echo $this->Custom->menu('main', array('dropdown' => true)); ?>
                </div>
            </nav>

            <div id="mainContent" class="wrap">
                <div class="error-content">
                    <?php //echo $content_for_layout; ?>
                   
                    <ul class="clearfix">
                        <li><h3><?php echo __('Lỗi:: Trang không tìm thấy hoặc vì lý do nào đó nên bạn không thể truy cập được.'); ?></h3></li>
                    </ul>
                    <a href="<?php echo $this->webroot;  ?>">(Trang chủ)</a>
                </div>
            </div>

            <?php // /echo $this->element('footer'); ?>

        </div><!-- END wrapper -->
    </body>
</html>
