<?php $this->Html->addCrumb(__($parentTitle),null); ?>
<h3 class="blk-tit"><?php echo __($parentTitle); ?></h3>
<?php if (count($arrData) > 0): ?>
    <div class="blk-contents">
        <ul class="blk-rows">
            <?php
            foreach ($arrData as $value):
                $value = $value['Newstb'];
                $title = $value['title'];
                $date = CakeTime::format('H:i | d-m-Y', $value['updated']);
                $nodePath = $value['path'];
                $excerpt = $value['excerpt'];
                $images = $value['images'];
                ?>
                <li class="clearfix">
                    <a href="<?php echo $nodePath; ?>" class="lnk-img features">
                        <?php echo $this->Custom->image($images, array('alt' => 'images', 'class' => 'img-border')); ?>
                    </a>
                    <div class="blk-items">
                        <a class="tit-items" href="<?php echo $nodePath; ?>"><?php echo $title; ?></a>
                        <label class="news-date"><?php echo $date; ?></label>
                        <div class="news-features"><?php echo $excerpt; ?>
                            <a class="more" href="<?php echo $nodePath; ?>"><?php echo __('Đọc thêm'); ?></a>
                        </div>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>

        <?php
        if (trim($this->NewsPaginator->numbers()) !== ''):
            ?>
            <div class="row-fluid">
                <div class="span12">
                    <div class="pagination">
                        <ul>
                            <?php echo $this->Paginator->prev('<'); ?>
                            <?php echo $this->NewsPaginator->numbers(); ?>
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