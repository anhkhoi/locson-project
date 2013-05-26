<?php
$this->Html->addCrumb(__('Tin tức'), null);
?>
<h3 class="blk-tit"><?php echo __('Tin tức'); ?></h3>
<?php if (count($nodeList) > 0): ?>
    <div class="blk-contents">
        <ul class="blk-rows">
            <?php
            foreach ($nodeList as $value):
                $value = $value['Newstb'];
                $title = $value['title'];
                $date = CakeTime::format('H:i | d-m-Y', $value['updated']);
                $nodePath = $value['path'];
                $excerpt = $value['excerpt'];
                $images = $value['images'];
                //Translate
                $langObj = ClassRegistry::init('I18nModel');
                $data = $langObj->find('all', array('conditions' => array('locale' => Configure::read('Config.language'), 'foreign_key' => $value['id'], 'model' => 'Newstb'), 'fields' => array('field', 'content')));
                if (count($data) > 0):
                    foreach ($data as $vals):
                        if ($vals['I18nModel']['field'] === 'title'):
                            $title = $vals['I18nModel']['content'];
                        elseif ($vals['I18nModel']['field'] === 'excerpt'):
                            $excerpt = $vals['I18nModel']['content'];
                        endif;
                    endforeach;
                endif;
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