<?php $this->Html->addCrumb(__('Liên hệ'), null); ?>
<h3 class="blk-tit"><?php echo __('Liên hệ'); ?></h3>
<div class="blk-contents">
    <div id="contentcontact">
        <ul id="headcontact">
            <li>
                <span class="c_home"><?php echo __('Địa chỉ'); ?>: </span>
                <label>
                    <?php echo __($this->Custom->getSetting('Site.address')); ?>
                </label>
            </li>
            <li>
                <span class="c_phone"><?php echo __('Điện thoại'); ?>: </span>
                <label><?php echo $this->Custom->getSetting('Site.phone'); ?></label>
            </li>
            <li>
                <span class="c_email">Email: </span>
                <label><?php echo $this->Custom->getSetting('Site.email'); ?></label>
            </li>
        </ul>
        <div class="clearfix">
            <div id="divcontact">

                <div id="contact-<?php echo $contact['Contact']['id']; ?>" class="">
                    <div class="contact-body">
                        <?php echo $contact['Contact']['body']; ?>
                    </div>

                    <?php if ($contact['Contact']['message_status']): ?>
                        <div class="contact-form">
                            <?php
                            echo $this->Form->create('Message', array(
                                'url' => array(
                                    'plugin' => 'contacts',
                                    'controller' => 'contacts',
                                    'action' => 'view',
                                    $contact['Contact']['alias'],
                                ),
                            ));
                            echo '<div class="rowcontact clearfix">';
                            echo $this->Form->input('Message.title', array('label' => __('Tiêu đề') . ':<span class="reds">*</span>'));
                            echo '</div>';
                            echo '<div class="rowcontact">';
                            echo $this->Form->input('Message.name', array('label' => __('Họ tên') . ':<span class="reds">*</span>'));
                            echo '</div>';
                            echo '<div class="rowcontact">';
                            echo $this->Form->input('Message.email', array('label' => __('Email') . ':<span class="reds">*</span>'));
                            echo '</div>';
                            echo '<div class="rowcontact txtareaCnt">';
                            echo $this->Form->input('Message.body', array('label' => __('Nội dung') . ':<span class="reds">*</span>'));
                            echo '</div>';

                            if ($contact['Contact']['message_captcha']):
                                echo $this->Recaptcha->display_form();
                            endif;

                            echo '<div class="rowcontact rowcaptcha">';
                            echo $this->Form->input('Message.captcha', array('maxlength' => 4, 'label' => __('Captcha: ') . '<span class="reds">*</span>'));
                            echo '<img class="img-captcha" src="' . Router::url(array('plugin' => 'contacts', 'controller' => 'contacts', 'action' => 'captcha')) . '" />';
                            echo '</div>';
                            ?>

                            <?php
                            echo '<div class="divsubmit">';
                            echo $this->Form->submit(__('Gửi liên hệ'), array('class' => 'bntstyle', 'id' => 'sendcontact'));
                            echo '</div>';

                            echo $this->Form->end();
                            ?>
                        </div>
                    <?php endif; ?>
                </div>

            </div><!-- END divcontact -->

            <div id="divMap">
                <div id="map-canvas" style="height: 100%" ></div>
            </div><!-- END divMap -->

        </div>
    </div>
</div><!-- END blk-contents -->
<script type="text/javascript">
    //10.844771 , 106.607702
    var map_longitude = '<?php echo $this->Custom->getSetting('Map.Longtitude'); ?>';
    var map_latitude = '<?php echo $this->Custom->getSetting('Map.Latitude'); ?>';
    var map_info = '';
    
    $("document").ready(function() {
        
        $(".contact-form .rowcontact").each(function() {
            var _this = $(this);
            $(this).find("input[type='text'],textarea").bind("focus", function() {
                _this.find('.error-message').remove();
            });
        });
    });
</script>

<?php echo $this->Html->script(array('map.js')); ?>