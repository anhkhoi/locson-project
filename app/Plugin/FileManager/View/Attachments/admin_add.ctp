<?php
echo $this->Html->css(array('/file_manager/css/fineuploader-3.5.0'));
echo $this->Html->script(array('/file_manager/js/jquery.fineuploader-3.5.0'));
?>
<div class="row-fluid">
    <div class="span8">
        <ul class="nav nav-tabs">
            <li><a href="#attachment-upload" data-toggle="tab"><?php echo __('Upload'); ?></a></li>
        </ul>
        <div class="tab-content">
            <div id="attachment-upload" class="tab-pane">
                <p class="info box"><?php echo __('Allowed extensions'); ?>: <b>jpeg, jpg, png</b>; <?php echo __('Size limit'); ?>: <b>500KB</b>; <?php echo __('Allowed multi file upload.'); ?></p>
                <div id="manual-fine-uploader"></div>
            </div>
            <?php echo $this->Croogo->adminTabs(); ?>
        </div>
    </div>
    <div class="span4">
        <?php
        echo $this->Html->beginBox(__('Publishing')) .
        $this->Form->button(__('Upload now'), array('id' => 'triggerUpload', 'type' => 'button', 'button' => 'default')) .
        $this->Form->end() .
        $this->Html->link(__('Go Back'), array('action' => 'browse'), array('button' => 'danger')) .
        $this->Html->endBox();
        echo $this->Croogo->adminBoxes();
        ?>
    </div>

</div>
<script>
    $(document).ready(function() {
        var manualuploader = $('#manual-fine-uploader').fineUploader({
            request: {
                endpoint: '/admin/file_manager/attachments/add/editor:1'
            },
            autoUpload: false,
            multiple: true,
            validation: {
                allowedExtensions: ['jpeg', 'jpg', 'png'],
                sizeLimit: 512000 // 500 kB = 500 * 1024 bytes
            },
            text: {
                uploadButton: '<i class="icon-plus icon-white"></i> Select Files'
            },
            showMessage: function(message) {
                //alert(message);
            }
        }).on('complete', function(event, id, fileName, responseJSON) {
            if (responseJSON.error) {
                alert(responseJSON.error);
            }
        });

        $('#triggerUpload').click(function() {
            manualuploader.fineUploader('uploadStoredFiles');
        });
    });
</script>