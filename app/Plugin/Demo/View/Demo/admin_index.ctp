<?php
$this->extend('/Common/admin_index');

$this->Html
        ->addCrumb('', '/admin', array('icon' => 'home'))
        ->addCrumb(__('Settings'), array(
            'admin' => true,
            'plugin' => 'settings',
            'controller' => 'settings',
            'action' => 'index',
        ));
if (!empty($this->request->params['named']['p'])) {
    $this->Html->addCrumb($this->request->params['named']['p']);
}
?>
<table class="table table-striped">
    <?php
    $tableHeaders = $this->Html->tableHeaders(array(
        $this->Paginator->sort('id'),
        $this->Paginator->sort('key'),
        $this->Paginator->sort('value'),
        $this->Paginator->sort('editable'),
        __('Actions'),
    ));
    ?>
    <thead>
        <?php echo $tableHeaders; ?>
    </thead>
    <?php
    $rows = array();
    foreach ($settings as $setting):
        $actions = array();
        $actions[] = $this->Croogo->adminRowAction('', array('controller' => 'settings', 'action' => 'moveup', $setting['Demo']['id']), array('icon' => 'chevron-up', 'tooltip' => __('Move up'))
        );
        $actions[] = $this->Croogo->adminRowAction('', array('controller' => 'settings', 'action' => 'movedown', $setting['Demo']['id']), array('icon' => 'chevron-down', 'tooltip' => __('Move down'))
        );
        $actions[] = $this->Croogo->adminRowAction('', array('controller' => 'settings', 'action' => 'edit', $setting['Demo']['id']), array('icon' => 'pencil', 'tooltip' => __('Edit this item'))
        );
        $actions[] = $this->Croogo->adminRowActions($setting['Demo']['id']);
        $actions[] = $this->Croogo->adminRowAction('', array('controller' => 'settings', 'action' => 'delete', $setting['Demo']['id']), array('icon' => 'trash', 'tooltip' => __('Remove this item')), __('Are you sure?'));

        $key = $setting['Demo']['key'];
        $keyE = explode('.', $key);
        $keyPrefix = $keyE['0'];
        if (isset($keyE['1'])) {
            $keyTitle = '.' . $keyE['1'];
        } else {
            $keyTitle = '';
        }
        $actions = $this->Html->div('item-actions', implode(' ', $actions));
        $rows[] = array(
            $setting['Demo']['id'],
            $this->Html->link($keyPrefix, array('controller' => 'settings', 'action' => 'index', 'p' => $keyPrefix)) . $keyTitle,
            $this->Text->truncate($setting['Demo']['value'], 20),
            $setting['Demo']['editable'],
            $actions,
        );
    endforeach;

    echo $this->Html->tableCells($rows);
    ?>
</table>
