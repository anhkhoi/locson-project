<?php
$this->Html->addCrumb(__('Khách hàng'), null);
?>
<h3 class="blk-tit"><?php echo __('Khách hàng'); ?></h3>
<?php if (count($nodeList) > 0): ?>
    <div class="blk-contents">
        <ul class="blk-rows">
            <?php
            foreach ($nodeList as $value):
                $value = $value['Customer'];
                $title = $value['title'];
                $description = $value['description'];
                $images = $value['images'];
                if (Configure::read('Config.language') === 'eng'):
                    $langObj = ClassRegistry::init('I18nModel');
                    $data = $langObj->find('all', array('conditions' => array('foreign_key' => $value['id'], 'model' => 'Customer'), 'fields' => array('field', 'content')));
                    if (count($data) > 0):
                        foreach ($data as $vals):
                            if ($vals['I18nModel']['field'] === 'title'):
                                $title = $vals['I18nModel']['content'];
                            endif;
                        endforeach;
                    endif;
                endif;
                ?>
                <li class="clearfix">
                    <a href="javascript:;" class="lnk-img features">
                        <?php echo $this->Custom->image($images, array('alt' => 'images', 'class' => 'img-border')); ?>
                    </a>
                    <div class="blk-items">
                        <a class="tit-items" href="javascript:;"><?php echo $title; ?></a>
                        <div class="news-features"><?php echo $description; ?>
                        </div>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>

        <?php
        if (trim($this->CustomerPaginator->numbers()) !== ''):
            ?>
            <div class="row-fluid">
                <div class="span12">
                    <div class="pagination">
                        <ul>
                            <?php echo $this->Paginator->prev('<'); ?>
                            <?php echo $this->CustomerPaginator->numbers(); ?>
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
<style type="text/css">
    .blk-items .news-features p{margin: 3px 0px}
    .blk-rows .blk-items .tit-items{cursor: default}
    .blk-rows .blk-items .tit-items:hover{color: #41427b;text-decoration: none}
    .blk-rows li .features{cursor: default}
</style>