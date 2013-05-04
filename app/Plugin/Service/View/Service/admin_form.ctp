<?php
$this->extend('/Common/admin_edit');
$this->Html
        ->addCrumb('', '/admin', array('icon' => 'home'))
        ->addCrumb(__('Services'), array('controller' => 'service', 'action' => 'index'));

if ($this->request->params['action'] == 'admin_edit') {
    $this->Html->addCrumb($this->request->data['Service']['title']);
}

if ($this->request->params['action'] == 'admin_add') {
    $this->Html->addCrumb(__('Add'), $this->here);
}

echo $this->Form->create('Service');
?>
<div class="row-fluid">
    <div class="span8">

        <ul class="nav nav-tabs">
            <li><a href="#contact-basic" data-toggle="tab"><?php echo __('Service'); ?></a></li>
            <?php echo $this->Croogo->adminTabs(); ?>
        </ul>

        <div class="tab-content">

            <div id="contact-basic" class="tab-pane">
                <?php
                echo $this->Form->input('id');
                $this->Form->inputDefaults(array(
                    'class' => 'span10',
                ));
                echo $this->Form->input('title', array(
                    'label' => __('Title')
                ));
                echo $this->Form->input('excerpt', array(
                    'label' => __('Excerpt')
                ));
                echo $this->Form->input('description', array(
                    'label' => __('Description')
                ));
                ?>
            </div>
        </div>
    </div>

    <div class="span4">
        <?php
        echo $this->Html->beginBox(__('Publishing')) .
        $this->Form->button(__('Apply'), array('name' => 'apply')) .
        $this->Form->button(__('Save')) .
        $this->Html->link(
                __('Cancel'), array('action' => 'index'), array('button' => 'danger')
        ) .
        $this->Form->input('status', array('label' => __('Published'), 'class' => false)) .
        '' .
        $this->Html->endBox()
        ;

        echo $this->Croogo->adminBoxes();
        ?>
    </div>

    <div class="span4">
        <?php
        echo $this->Html->beginBox(__('Image Feature'))
        . '<div id="divfeature" class="image-feature">'
        . '</div>'
        . $this->Form->input('images', array('style' => 'display:none', 'label' => ''))
        . $this->Form->button(__('Upload'), array(
            'type' => 'button',
            'id' => 'btnUpload',
            'style' => 'margin-top: 20px'))
        . $this->Html->endBox();
        echo $this->Croogo->adminBoxes();
        ?>
    </div>
</div>

<?php echo $this->Form->end(); ?>

<style type="text/css">
    .image-feature{text-align: center}
    .image-feature img{max-width: 80%}
</style>
<script type="text/javascript">
    $(function() {
        if ($("#ServiceImages").val() !== '') {
            $('<img src="' + $("#ServiceImages").val() + '" />').appendTo($('#divfeature'));
        }

        $("#btnUpload").click(function() {
            window.open('<?php echo 'http://' . $_SERVER['HTTP_HOST']; ?>/admin/file_manager/attachments/browse?type=feature&inputHidden=ServiceImages&domContain=divfeature', '', 'width=900,height=600');
        });
    });
</script>