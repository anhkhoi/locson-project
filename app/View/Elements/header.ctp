<header>
    <div id="headWrap" class="wrap clearfix">
        <div id="headLeft">
            <a href="<?php echo $this->webroot; ?>" class="logo">
                <?php
                if (trim($this->Custom->getSetting('Site.logo', true)) !== ''):
                    echo $this->Custom->image($this->Custom->getSetting('Site.logo'), array('alt' => 'logo'));
                else:
                    echo $this->Custom->getSetting('Site.logo');
                endif;
                ?>
            </a>
        </div><!-- END headLeft -->
        <div id="headRight">
        
            <?php echo $this->Layout->blocks('rg-ls-header-contact'); ?>
            
        </div><!-- END headRight -->
    </div>
</header><!-- END header -->