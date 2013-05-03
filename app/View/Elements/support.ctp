<section id="sec_contact" class="clearfix">
    <div class="ct_shadow"></div>
    <div class="wrap">
        <?php
        $support = ClassRegistry::init('Support');
        $arrData = $support->find('all', array('conditions' => array('status' => 1), 'order' => array('id ASC'), 'limit' => 4));
        if (count($arrData) > 0):
            ?>
            <ul class="clearfix">
                <?php
                foreach ($arrData as $vals):
                    $supporter = $vals['Support']['title'];
                    $email = $vals['Support']['email'];
                    $phone = $vals['Support']['phone'];
                    $yahoo = $vals['Support']['yahoo'];
                    $skype = $vals['Support']['skype'];

                    //Translate
                    $langObj = ClassRegistry::init('I18nModel');
                    $data = $langObj->find('all', array('conditions' => array('locale' => Configure::read('Config.language'), 'foreign_key' => $vals['Support']['id'], 'model' => 'Support'), 'fields' => array('field', 'content')));
                    if (count($data) > 0):
                        foreach ($data as $vals):
                            if ($vals['I18nModel']['field'] === 'title'):
                                $supporter = $vals['I18nModel']['content'];
                            endif;
                        endforeach;
                    endif;
                    ?>
                    <li>
                        <h3><?php echo $supporter; ?></h3>
                        <p><b><?php echo __('Phone'); ?>:</b> <?php echo $phone; ?></p>
                        <p><b>Email:</b> <?php echo $email; ?></p>
                        <p>
                            <a href="ymsgr:sendIM?<?php echo $yahoo; ?>"><img src="http://opi.yahoo.com/online?u=<?php echo $yahoo; ?>&amp;m=g&amp;t=1"></a>
                            <a href="skype:<?php echo $skype; ?>?chat" class="btn-skype">
                                <img src="http://mystatus.skype.com/smallclassic/<?php echo $skype; ?>" />
                            </a>
                        </p>
                    </li>
                <?php endforeach; ?>
            </ul>
            <?php
        endif;
        ?>
    </div>
</section><!-- END CONTACT -->