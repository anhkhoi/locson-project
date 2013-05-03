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
        echo $this->Html->meta('favicon.ico', '/theme/' . $this->theme. '/favicon.ico', array('type' => 'icon'));
        ?>
        <meta name="viewport" content="width=device-width">

        <?php echo $this->Html->css(array('global', 'style', 'theme')); ?>
        <!--[if lte IE 8]>
        <?php echo $this->Html->css('ie'); ?>
        <![endif]-->

        <?php
        echo $this->Html->script(array('modernizr-2.6.2.min', 'jquery.min.js', 'jquery.mousewheel.min.js', 'jquery.carouFredSel-6.2.0-packed.js', 'main.js', 'http://maps.google.com/maps/api/js?sensor=true&language=vi'));
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
                            <a title="VN" class="flag-vn" href="<?php echo $this->request->here . '?lang=vie'; ?>"></a>
                            <a title="EN" class="flag-en" href="<?php echo $this->request->here . '?lang=eng'; ?>"></a>
                        </div>
                    </div>
                    <?php echo $this->Custom->menu('main', array('dropdown' => true)); ?>
                </div>
            </nav>

            <div id="mainContent" class="wrap">

                <?php
                echo $this->element('scroll_top');
                echo $this->Layout->sessionFlash();
                ?>

                <?php
                if ($this->Custom->isHome()):
                    //Home page
                    echo $content_for_layout;
                else:

                    echo $this->element('breadcrumb');
                    ?>
                    <div id="modContent" class="clearfix">
                        <div class="left-content">

                            <?php if (trim($this->Layout->blocks('rg-ls-product-category')) !== ''): ?>
                                <nav class="nav-left">
                                    <h3><?php echo __('Sản phẩm in ấn'); ?></h3>
                                    <div class="nav-sd"></div>
                                    <?php echo $this->Layout->blocks('rg-ls-product-category'); ?>
                                </nav><!-- END category -->
                            <?php endif; ?>

                            <?php if (trim($this->Layout->blocks('rg-ls-service-category')) !== ''): ?>
                                <nav class="nav-left">
                                    <h3><?php echo __('Dịch vụ in ấn'); ?></h3>
                                    <div class="nav-sd"></div>
                                    <?php echo $this->Layout->blocks('rg-ls-service-category'); ?>
                                </nav><!-- END category -->
                            <?php endif; ?>

                        </div><!-- END left-content -->

                        <div class="right-content">

                            <?php echo $content_for_layout; ?>

                        </div><!-- END right-content -->

                    </div><!-- END modContent -->
                <?php endif; ?>

            </div><!-- END mainContent -->

            <?php echo $this->element('support'); ?>

            <?php echo $this->element('footer'); ?>

        </div><!-- END wrapper -->

        <?php echo $this->element('sql_dump'); ?>
    </body>
</html>
