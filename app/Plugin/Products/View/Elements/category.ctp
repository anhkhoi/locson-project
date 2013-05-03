<?php $this->Html->addCrumb(__($parentTitle),null); ?>
<h3 class="blk-tit"><?php echo __($parentTitle); ?></h3>
<?php if (count($arrData) > 0): ?>
    <div class="blk-contents">
        <ul class="blk-product clearfix">
            <?php
            foreach ($arrData as $value):
                $value = $value['Product'];
                $title = $value['title'];                
                $nodePath = $value['path'];
                $images = $value['images'];
                if ($images == ''):
                    $images = '/img/croogo.png';
                endif;

                if (Configure::read('Config.language') === 'eng'):
                    $langObj = ClassRegistry::init('I18nModel');
                    $data = $langObj->find('all', array('conditions' => array('foreign_key' => $value['id'], 'model' => 'Products'), 'fields' => array('field', 'content')));
                    if (count($data) > 0):
                        foreach ($data as $vals):
                            if ($vals['I18nModel']['field'] === 'title'):
                                $title = $vals['I18nModel']['content'];
                            endif;
                        endforeach;
                    endif;
                endif;
                ?>
                <li>
                    <a href="<?php echo $images; ?>" class="features">
                        <?php echo $this->Custom->image($images, array('data-largeimg' => $images, 'class' => 'img-tooltip', 'alt' => 'images')); ?>
                    </a>
                    <a class="tit-items" title="<?php echo $title; ?>" href="<?php echo $nodePath; ?>"><?php echo $this->Text->truncate($title, 22, array('ellipsis' => '...', 'exact' => false)); ?></a>
                </li>

            <?php endforeach; ?>
        </ul>

        <?php
        if (trim($this->ProductsPaginator->numbers()) !== ''):
            ?>
            <div class="row-fluid">
                <div class="span12">
                    <div class="pagination">
                        <ul>
                            <?php echo $this->Paginator->prev('<'); ?>
                            <?php echo $this->ProductsPaginator->numbers(); ?>
                            <?php echo $this->Paginator->next('>'); ?>
                        </ul>
                    </div>
                </div>
            </div>
            <?php
        endif;
        ?>
    </div><!-- END blk-contents -->
<?php endif; ?>

<?php
echo $this->Html->css(array('tinyTips', 'jquery.fancybox-1.3.4'));
echo $this->Html->script(array('jquery.tinyTips.js', 'jquery.fancybox-1.3.4.pack.js'));
?>
<script type="text/javascript">
    $(document).ready(function() {
        //Tooltip for product images
        $('.img-tooltip').tinyTips(null, true);

        $(".blk-product li .features").fancybox({
            'titleShow': false,
            'transitionIn': 'none',
            'transitionOut': 'none',
            onStart: function() {
                $(".blkTip").remove();
            }
        });
    });
</script>