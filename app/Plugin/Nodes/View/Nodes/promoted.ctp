<?php $this->set("title_for_layout", __('Trang chủ')); ?>
<div id="modContent" class="clearfix">
    <section id="modIntro">
        <h3 class="blk-tit"><?php echo __('Giới thiệu'); ?></h3>
        <?php 
            
            $objNode = ClassRegistry::init('Nodes');
            $arrData = $objNode->find('all',array(
                'conditions' => array('slug'=>'gioi-thieu','status'=>1),
                'fields' => array('title','path','excerpt')
            ));
        ?>
        <a class="intro-img" href="#">
            <?php 
            if(trim($this->Custom->getSetting('Intro.images',true)) !== ''): 
                echo $this->Custom->image($this->Custom->getSetting('Intro.images'), array('class' => 'img-border', 'alt' => 'image')); 
            else:
                echo $this->Custom->getSetting('Intro.images');
            endif; 
            ?>
        </a>
        
        <div class="intro-content">
            <?php if(count($arrData) > 0): ?>
            <?php echo $this->Text->truncate($arrData[0]['Nodes']['excerpt'], 850, array('exact' => false)); ?>
            <a href="<?php echo $arrData[0]['Nodes']['path']; ?>" class="more"><?php echo __('Xem thêm'); ?></a>
            <?php endif; ?>
        </div>
    </section>

    <section id="modProduct">
        <h3 class="blk-tit"><?php echo __('Dịch vụ'); ?></h3>
        <?php
        $Service = ClassRegistry::init('Service');
        $arrData = $Service->find('all', array(
            'conditions' => array('status' => 1, 'parent > ' => 0),
            'fields' => array('excerpt', 'title', 'images', 'path'),
            'order' => 'updated DESC',
            'limit' => 4
        ));

        if (count($arrData) > 0):
            ?>
            <ul>
                <?php
                foreach ($arrData as $vals):
                    $title = $vals['Service']['title'];
                    $images = $vals['Service']['images'];
                    $path = $vals['Service']['path'];
                    $excerpt = $vals['Service']['excerpt'];
                    ?>
                    <li class="clearfix">
                        <a class="lnk-img" href="<?php echo $path; ?>">
                            <?php echo $this->Custom->image($images, array('class' => 'img-border', 'alt' => 'image product')); ?>
                        </a>
                        <div class="liitem">
                            <a class="lnk-tit" title="<?php echo $title; ?>" href="<?php echo $path; ?>"><?php echo $this->Text->truncate($title, 26, array('ellipsis' => '...', 'exact' => false)); ?></a>
                            <span><?php echo $this->Text->truncate($excerpt, 75, array('exact' => false)); ?></span>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    </section>

    <section id="modNews">
        <h3 class="blk-tit"><?php echo __('Tin tức'); ?></h3>
        <?php
        $News = ClassRegistry::init('Newstb');
        $arrData = $News->find('all', array(
            'conditions' => array('status' => 1, 'parent > ' => 1),
            'fields' => array('excerpt', 'title', 'images', 'path'),
            'order' => 'updated DESC',
            'limit' => 4
        ));

        if (count($arrData) > 0):
            ?>
            <ul>
                <?php
                foreach ($arrData as $vals):
                    $title = $vals['Newstb']['title'];
                    $images = $vals['Newstb']['images'];
                    $path = $vals['Newstb']['path'];
                    $excerpt = $vals['Newstb']['excerpt'];
                    ?>
                    <li class="clearfix">
                        <a class="lnk-img" href="<?php echo $path; ?>">
                            <?php echo $this->Custom->image($images, array('class' => 'img-border', 'alt' => 'image product')); ?>
                        </a>
                        <div class="liitem">
                            <a class="lnk-tit" href="<?php echo $path; ?>"><?php echo $this->Text->truncate($title, 26, array('ellipsis' => '...', 'exact' => false)); ?></a>
                            <span><?php echo $this->Text->truncate($excerpt, 70, array('exact' => false)); ?></span>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    </section>

</div><!-- END modContent -->