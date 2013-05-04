<?php
$this->extend('/Common/admin_edit');
$this->Html
        ->addCrumb('', '/admin', array('icon' => 'home'))
        ->addCrumb(__('Products'), array('controller' => 'products', 'action' => 'index'));

if ($this->request->params['action'] == 'admin_edit') {
    $this->Html->addCrumb($this->request->data['Product']['title']);
}

if ($this->request->params['action'] == 'admin_add') {
    $this->Html->addCrumb(__('Add'), $this->here);
}

echo $this->Form->create('Product');
?>
<div class="row-fluid clearfix">
    <div class="span8">

        <ul class="nav nav-tabs">
            <li><a href="#contact-basic" data-toggle="tab"><?php echo __('Products'); ?></a></li>
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
        echo $this->Html->beginBox(__('Publishing'));
        echo $this->Form->button(__('Apply'), array('name' => 'apply'));
        echo $this->Form->button(__('Save'));
        echo $this->Html->link(__('Cancel'), array('action' => 'index'), array('button' => 'danger'));
        echo $this->Form->input('status', array('label' => __('Published'), 'class' => false)) ;
        echo $this->Html->endBox();
        echo $this->Croogo->adminBoxes();
        ?>
    </div>

    <div class="span4">
        <?php
        echo $this->Html->beginBox(__('Parent Category'));
        echo $this->Form->input('parent',array('options' => $cateOptions,'label'=>''));
        echo $this->Html->endBox();
        echo $this->Croogo->adminBoxes();
        ?>
    </div>
    <div class="span4" style="float: right">
        <?php
        echo $this->Html->beginBox(__('Image Relative'));
        echo $this->Form->input('imglistid', array('label' => '', 'placeholder' => __('ID Image')));
        echo $this->Form->button(__('Insert'), array('type' => 'button','id' => 'btnInsert','style' => 'margin-top: -5px'));
        echo $this->Html->endBox();
        echo $this->Croogo->adminBoxes();
        ?>
    </div>
    <div class="span4">
        <?php
        echo $this->Html->beginBox(__('Image Feature'));
        echo '<div id="divfeature" class="image-feature">';
        echo '</div>';
        echo $this->Form->input('images', array('style' => 'display:none', 'label' => ''));
        echo $this->Form->button(__('Upload'), array(
            'type' => 'button',
            'id' => 'btnUpload',
            'style' => 'margin-top: 20px'));
        echo $this->Html->endBox();
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
        if ($("#ProductImages").val() !== '') {
            $('<img src="' + $("#ProductImages").val() + '" />').appendTo($('#divfeature'));
        }

        $("#btnUpload").click(function() {
            window.open('<?php echo 'http://' . $_SERVER['HTTP_HOST']; ?>/admin/file_manager/attachments/browse?type=feature&inputHidden=ProductImages&domContain=divfeature', '', 'width=900,height=600');
        });
        
        $("#btnInsert").click(function() {
            window.open('<?php echo 'http://' . $_SERVER['HTTP_HOST']; ?>/admin/file_manager/attachments/browse?type=feature&domContain=&listImage=ProductImglistid', '', 'width=900,height=600');
        });
    });
</script>