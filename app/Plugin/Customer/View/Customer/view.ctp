<?php
$this->Html->addCrumb(__('Khách hàng'), '/khach-hang.html');
if (count($arrData) > 0):
    $this->Html->addCrumb(__($arrData[0]['Customer']['title']),null);
    foreach ($arrData as $vals):
        $html = '<h3 class="blk-tit">' . __($vals['Customer']['title']) . '</h3>';
        $html .= '<div class="blk-contents">';
        $html .= $vals['Customer']['description'];
        $html .= '</div>';
    endforeach;
else:
    $html = '<p class="no-data">' . __('Không có dữ liệu tìm thấy') . '</p>';
endif;
echo $html;
?>