<?php
$this->extend('/Common/admin_edit');
$this->Html
        ->addCrumb('', '/admin', array('icon' => 'home'))
        ->addCrumb(__('Support'), array('controller' => 'support', 'action' => 'index'));

if ($this->request->params['action'] == 'admin_edit') {
    $this->Html->addCrumb($this->request->data['Support']['title']);
}

if ($this->request->params['action'] == 'admin_add') {
    $this->Html->addCrumb(__('Add'), $this->here);
}

echo $this->Form->create('Support');
?>
<div class="row-fluid">
    <div class="span8">

        <ul class="nav nav-tabs">
            <li><a href="#contact-basic" data-toggle="tab"><?php echo __('Support'); ?></a></li>
            <?php echo $this->Croogo->adminTabs(); ?>
        </ul>

        <div class="tab-content">

            <div id="contact-basic" class="tab-pane">
                <?php
                echo $this->Form->input('id');
                $this->Form->inputDefaults(array(
                    'class' => 'span10'
                ));
                echo $this->Form->input('title', array(
                    'label' => __('Supporter')
                ));
                echo $this->Form->input('email', array(
                    'label' => __('Email')
                ));
                echo $this->Form->input('phone', array(
                    'label' => __('Phone')
                ));
                echo $this->Form->input('yahoo', array(
                    'label' => __('Yahoo')
                ));
                echo $this->Form->input('skype', array(
                    'label' => __('Skype')
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

</div>

<?php echo $this->Form->end(); ?>