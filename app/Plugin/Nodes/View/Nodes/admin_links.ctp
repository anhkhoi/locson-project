<?php
echo $this->Html->css(array('admin', 'croogo-bootstrap', 'croogo-bootstrap-responsive'));
echo $this->Html->script(array('jquery/jquery.min', 'jquery/jquery.mousewheel.min', 'croogo-bootstrap'));
?>
<script type="text/javascript">
    $(function() {
        var toolbox = $('body'), height = toolbox.height(), scrollHeight = toolbox.get(0).scrollHeight;
        toolbox.bind('mousewheel', function(e, d) {
            if ((this.scrollTop === (scrollHeight - height) && d < 0) || (this.scrollTop === 0 && d > 0)) {
                e.preventDefault();
            }
        });
    });
</script>
<style type="text/css">
    .row-fluid{width:692px;margin:6px 10px 10px}
    #link-nodes .nodes{padding:5px}
    .nodes-for-links{margin-top:10px}
    .nodes-for-links li{margin-bottom:5px}
    .paging{list-style: none}
    .paging li{display: inline-block;zoom: 1;*display: block;margin-right: 8px}
    .paging li a:hover{background-color:#49b1e6;color:#fff}
    .paging li a{background-color:#08c;color:#fff;font-size:11px;border-radius:15px;text-decoration:none;padding:2px 6px}
</style>
<script>
    function getLinkForNode(obj){
        parent.$('#LinkLink').val(obj.rel);
        parent.tb_remove();
        return false;
    }
</script>

<div class="row-fluid">
    <div class="span8">

        <ul class="nav nav-tabs">
            <li class="active"><a href="#link-nodes" data-toggle="tab"><?php echo __('Nodes'); ?></a></li>
            <li><a href="#link-service" data-toggle="tab"><?php echo __('Service'); ?></a></li>
            <li><a href="#link-news" data-toggle="tab"><?php echo __('News'); ?></a></li>
            <li><a href="#link-products" data-toggle="tab"><?php echo __('Products'); ?></a></li>
            <li><a href="#link-customer" data-toggle="tab"><?php echo __('Customers'); ?></a></li>
        </ul>

        <div class="tab-content">
            <div id="link-nodes" class="tab-pane active">
                <div class="nodes">
                    <div>
                        <?php
//                        if (isset($this->params['named'])) {
//                            foreach ($this->params['named'] as $nn => $nv) {
//                                $this->Paginator->options['url'][] = $nn . ':' . $nv;
//                            }
//                        }
//                        echo __('Sort by:');
//                        echo ' ' . $this->Paginator->sort('id');
//                        echo ', ' . $this->Paginator->sort('title');
//                        echo ', ' . $this->Paginator->sort('created');
                        ?>
                    </div>

                    <ul class="nodes-for-links">
                        <?php foreach ($nodes as $node) { ?>
                            <li>
                                <?php
                                echo $this->Html->link($node['Node']['title'], array(
                                    'admin' => false,
                                    'plugin' => 'nodes',
                                    'controller' => 'nodes',
                                    'action' => 'view',
                                    'type' => $node['Node']['type'],
                                    'slug' => $node['Node']['slug'],
                                        ), array(
                                            'onclick' => 'getLinkForNode(this)',
                                    'rel' => sprintf('plugin:%s/controller:%s/action:%s/type:%s/slug:%s', 'nodes', 'nodes', 'view', $node['Node']['type'], $node['Node']['slug']),
                                ));
                                ?>
                            </li>
                        <?php } ?>
                    </ul>
                    <div class="paging"><?php //echo $this->Paginator->numbers(); ?></div>
                </div>
            </div>

            <div id="link-service" class="tab-pane">
                <ul class="nodes-for-links">
                    <?php foreach ($serviceData as $node) { ?>
                        <li>
                            <?php
                            if($node['Service']['parent'] == 0):
                                $rel = '/dich-vu.html';
                            else:
                                $rel = '/dich-vu/' . $node['Service']['slug'] . '-' . $node['Service']['id'] . '.html';
                            endif;
                            
                                echo $this->Html->link($node['Service']['title'], array(
                                'admin' => false,
                                'plugin' => 'service',
                                'controller' => 'service',
                                'action' => 'view'
                                ), array(
                                    'onclick'=>'javascript:getLinkForNode(this)',
                                    'rel' => $rel
                                ));
                            ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            
            <div id="link-news" class="tab-pane">
                <ul class="nodes-for-links">
                    <?php foreach ($newsData as $node) { ?>
                        <li>
                            <?php
                            if($node['Newstb']['parent'] == 0):
                                $rel = '/tin-tuc.html';
                            else:
                                $rel = '/tin-tuc/' . $node['Newstb']['slug'] . '-' . $node['Newstb']['id'] . '.html';
                            endif;
                            
                                echo $this->Html->link($node['Newstb']['title'], array(
                                'admin' => false,
                                'plugin' => 'news',
                                'controller' => 'news',
                                'action' => 'view'
                                ), array(
                                    'onclick'=>'javascript:getLinkForNode(this)',
                                    'rel' => $rel
                                ));
                            ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            
            <div id="link-products" class="tab-pane">
                <ul class="nodes-for-links">
                    <?php foreach ($productData as $node) { ?>
                        <li>
                            <?php
                            if($node['Product']['parent'] == 0):
                                $rel = '/san-pham.html';
                            else:
                                $rel = '/san-pham/' . $node['Product']['slug'] . '-' . $node['Product']['id'] . '.html';
                            endif;
                            
                                echo $this->Html->link($node['Product']['title'], array(
                                'admin' => false,
                                'plugin' => 'products',
                                'controller' => 'products',
                                'action' => 'view'
                                ), array(
                                    'onclick'=>'javascript:getLinkForNode(this)',
                                    'rel' => $rel
                                ));
                            ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>

            <div id="link-customer" class="tab-pane">
                <ul class="nodes-for-links">
                    <?php foreach ($customerData as $node) { ?>
                        <li>
                            <?php
                            if($node['Customer']['parent'] == 0):
                                $rel = '/khach-hang.html';
                            endif;
                            
                                echo $this->Html->link($node['Customer']['title'], array(
                                'admin' => false,
                                'plugin' => 'customer',
                                'controller' => 'customer',
                                'action' => 'view'
                                ), array(
                                    'onclick'=>'javascript:getLinkForNode(this)',
                                    'rel' => $rel
                                ));
                            ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            
        </div>
    </div>
</div>