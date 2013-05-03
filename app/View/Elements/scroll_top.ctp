<section id="topScroll">
    <h3 class="blk-tit"><?php echo __('Sản phẩm'); ?></h3>
    <?php
    if (trim($this->Custom->getSetting('Product.feature', true)) !== ''):
        $strId = '';
        foreach (explode(',', $this->Custom->getSetting('Product.feature')) as $vals):
            if ((int) $vals > 0):
                $strId .= ',' . $vals;
            endif;
        endforeach;
        $strId = substr($strId, 1);

        $product = ClassRegistry::init('Product');
        $arrData = $product->find('all', array(
            'conditions' => array('status' => 1, 'parent > ' => 0, 'id IN (' . $strId . ')'),
            'fields' => array('title', 'images', 'path')
        ));
        $arrData = Set::extract('/Product/.', $arrData);
        ?>

        <ul id="scrollTop" class="clearfix">
            <?php
            if (count($arrData) > 0):
                foreach ($arrData as $vals):
                    $title = $vals['title'];
                    $path = $vals['path'];
                    $images = $vals['images'];
                    if ($images === '')
                        $images = '/img/croogo.png';
                    ?>
                    <li>
                        <a class="scroll-img" href="<?php echo $path; ?>">
                            <?php echo $this->Custom->image($images, array('alt' => 'image')); ?>
                        </a>
                        <a class="scroll-tit" href="<?php echo $path; ?>"><?php echo $this->Text->truncate($title, 28, array('ellipsis' => '...', 'exact' => false)); ?></a>
                    </li>
                    <?php
                endforeach;
            else:
            endif;
            ?>
        </ul>

        <?php
    else:
        echo $this->Custom->getSetting('Product.feature');
    endif;
    ?>

</section>