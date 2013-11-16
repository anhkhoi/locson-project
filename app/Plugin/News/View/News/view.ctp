<?php

$this->Html->addCrumb(__('Tin tức'), '/tin-tuc.html');
if ($parentId == 1):
    echo $this->element('category');
else:
    if (count($arrData) > 0):
        $this->Html->addCrumb(__($arrData[0]['Newstb']['title']),null);
        foreach ($arrData as $vals):
            $html = '<h3 class="blk-tit">' . __($vals['Newstb']['title']) . '</h3>';
            $html .= '<div class="blk-contents">';
            $html .= $vals['Newstb']['description'];
            $html .= '</div>';
        endforeach;
    else:
        $html = '<p class="no-data">' . __('Không có dữ liệu tìm thấy') . '</p>';
    endif;
    echo $html;
endif;
?>