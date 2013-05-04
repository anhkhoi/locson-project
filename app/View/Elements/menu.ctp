<?php echo $this->Custom->nestedLinks($menu['threaded'], $options); ?>
<script type="text/javascript">
    $(document).ready(function() {

        $(".topnav li").each(function() {
            var _this = $(this);
            if (!_this.hasClass('active')) {
                _this.find('ul.subnav li').each(function() {
                    if ($.trim($(this).attr('class')) === 'active') {
                        $(this).removeAttr('class');
                        _this.attr('class', 'active');
                        return false;
                    }
                });
            }

            var href = _this.find('a').attr('href');
            if (href !== undefined) {
                var href = href.replace('.html', '');
                if (href === '/san-pham' && Croogo.params.controller === 'products' && Croogo.params.plugin === 'products') {
                    _this.attr('class', 'active');
                } else if (href === '/tin-tuc' && Croogo.params.controller === 'news' && Croogo.params.plugin === 'news') {
                    _this.attr('class', 'active');
                } else if (href === '/dich-vu' && Croogo.params.controller === 'service' && Croogo.params.plugin === 'service') {
                    _this.attr('class', 'active');
                }
            }

        });

    });
</script>