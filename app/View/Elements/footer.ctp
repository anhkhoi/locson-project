<footer>
    <div id="footerWrap" class="wrap">
        <div class="clearfix">
            <div id="footerLeft">
                <nav id="footerNav">
                    <?php
                    if (trim($this->Layout->blocks('rg-ls-menu-footer')) !== ''):
                        echo $this->Layout->blocks('rg-ls-menu-footer');
                    else:
                        ?>
                        <p class="miss-cont">Menu (Region: rg-ls-menu-footer)</p>
                    <?php endif; ?>

                </nav>

                <?php
                if (trim($this->Layout->blocks('rg-ls-contact-footer')) !== ''):
                    echo $this->Layout->blocks('rg-ls-contact-footer');
                else:
                    ?>
                    <p class="miss-cont">Liên hệ (Region: rg-ls-contact-footer)</p>
                <?php endif; ?>

            </div>

            <div id="footerRight" class="clearfix">
                <?php
                if (trim($this->Layout->blocks('rg-ls-statistic-footer')) !== ''):
                    echo $this->Layout->blocks('rg-ls-statistic-footer');
                else:
                    ?>
                    <p class="miss-cont">Thống kê (Region: rg-ls-statistic-footer)</p>
                <?php endif; ?>
                    <p><?php echo __($this->Custom->getSetting('Site.copyright')); ?></p>
            </div>

        </div>

    </div><!-- END footerWrap -->

</footer><!-- END footer -->