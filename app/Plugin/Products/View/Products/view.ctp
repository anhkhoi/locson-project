<?php
$this->Html->addCrumb(__('Sản phẩm'), '/san-pham');
if ($parentId == 1):
    echo $this->element('category');
else:
?>
<?php
$this->Html->addCrumb(__($arrData[0]['Product']['title']), null);
if (count($arrData) > 0):
    $data = $arrData[0]['Product'];
    $title = $data['title'];
    $images = $data['images'];
    $description = $data['description'];
    $excerpt = $data['excerpt'];
    $path = $data['path'];
    $imglistid = $data['imglistid'];
    ?>
    <h3 class="blk-tit"><?php echo __($title); ?></h3>
    <div class="blk-contents">
        <div class="clearfix">
            <div class="div-feature">
                <a href="<?php echo $images; ?>">
                    <?php echo $this->Custom->image($images, array('id' => 'productFeature', 'class' => 'img-features', 'alt' => 'images')); ?>
                </a>
            </div>

            <div id="scrollbar">
                <div class="scrollbar">
                    <div class="track">
                        <div class="thumb">
                            <div class="end"></div>
                        </div>
                    </div>
                </div>
                <div class="viewport">
                    <div class="overview">
                        <?php echo $imglistid; ?>
                    </div>
                </div>
            </div><!-- END scrollbar -->
        </div>

        <div class="product-contact">
            <span><b><?php echo __('Khách hàng muốn biết chi tiết xin liên hệ theo thông tin dưới đây'); ?></b></span>
            <span><b><?php echo __('Tư vấn 1'); ?>:</b> 023029309 , <b><?php echo __('Tư vấn 2'); ?>:</b> 023029029</span>
            <span><?php echo __('Hoặc gửi liên hệ'); ?>: <a href="<?php echo '/lien-he'; ?>"><?php echo __('Tại đây'); ?></a></span>
            <span><b><?php echo __('Xin trân thành cảm ơn.'); ?></b></span>
        </div>

        <div class="product-des">
            <h3 class="des-tit"><?php echo __('Mô tả sản phẩm'); ?></h3>
            <div class="des-content">
                    <?php echo $description; ?>
            </div>
        </div>

    </div><!-- END blk-contents -->
    <?php
else:
    echo '<p class="no-data">' . __('Không có dữ liệu tìm thấy') . '</p>';
endif;
?>

<div class="product-rel">
    <h3 class="des-tit"><?php echo __('Sản phẩm ngẫu nhiên'); ?></h3>
    <?php
    if (count($randomProduct) > 0):
        ?>
        <div class="blk-contents">
            <ul class="blk-product clearfix">
                <?php
                foreach ($randomProduct as $vals):
                    $vals = $vals['Product'];
                    $title = $vals['title'];
                    $path = $vals['path'];
                    $images = $vals['images'];
                    ?>
                    <li>
                        <a href="<?php echo $images; ?>" class="features">
                            <?php echo $this->Custom->image($images, array('data-largeimg' => $images,'class' => 'img-tooltip', 'alt' => 'images')); ?>
                        </a>
                        <a title="<?php echo $title; ?>" class="tit-items" href="<?php echo $path; ?>"><?php echo $this->Text->truncate($title, 22, array('ellipsis' => '...', 'exact' => false)); ?></a>
                    </li>
            <?php endforeach; ?>
            </ul>
        </div>
        <?php
    else:
        echo '<p class="no-data">' . __('Không có dữ liệu tìm thấy') . '</p>';
    endif;
    ?>
</div><!-- END product-rel -->

<?php
echo $this->Html->css(array('tinyscrollbar', 'jquery.fancybox-1.3.4'));
echo $this->Html->script(array('jquery.mousewheel.min.js', 'jquery.carouFredSel-6.2.0-packed.js', 'jquery.tinyscrollbar.js', 'jquery.fancybox-1.3.4.pack.js', 'main.js'));
?>
<script type="text/javascript">
    $(document).ready(function() {

        $('#scrollbar').tinyscrollbar();

        //Show large images
        var items = $("#scrollbar .overview ul li");
        items.click(function() {
            var src = $(this).find("img").attr("src");
            items.each(function() {
                $(this).find("img").removeClass("active");
            });
            if (src !== '') {
                $(this).find("img").addClass("active");
                $("#productFeature").closest("a").attr("href", src);
                $("#productFeature").attr("src", src).css("opacity", 0).stop().animate({opacity: 1}, 500);
            }
        });

        $(".div-feature a").fancybox({
            'titleShow': false,
            'transitionIn': 'none',
            'transitionOut': 'none'
        });

    });
</script>
<?php endif; ?>