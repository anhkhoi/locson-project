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
    function getLinkForNode(obj) {
        parent.$('#ServiceParent').val(obj.rel);
        parent.tb_remove();
        return false;
    }
</script>

<div class="row-fluid">
    <div class="span8">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#link-nodes" data-toggle="tab">Nodes</a></li>
        </ul>
        
        <div class="tab-content">
            <div id="link-access">
                <ul class="nodes-for-links">
                    <?php
                        foreach ($dataNode as $node):
                            ?>
                            <li>
                                <?php
                                echo $this->Html->link($node['Node']['title'], array(), array(
                                    'onclick' => 'javascript:getLinkForNode(this)',
                                    'rel' => $node['Node']['slug']
                                ));
                                ?>
                            </li>
                        <?php endforeach;?>
                </ul>
                <div class="paging"><?php //echo $this->Paginator->numbers();   ?></div>
            </div>

        </div>
    </div>
</div>