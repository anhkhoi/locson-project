<?php

class CustomHelper extends AppHelper {

    public function __construct(\View $View, $settings = array()) {
        parent::__construct($View, $settings);
    }

    public function getSetting($key,$empty = false) {
        $value = '';
        if (!empty($key)):
            if (Configure::read($key) != ''):
                $value = Configure::read($key);
            else:
                if($empty == false):
                    $value = '<label class="miss-cont">' . __('Setting Key = ' . $key) . '</label>';
                else:
                    $value = '';
                endif;
            endif;
        endif;

        return $value;
    }

    public function getPath($path = null) {
        return $this->webroot . 'theme/' . $this->theme . $path;
    }

    public function image($name = '', $options = null) {
        if ($options == null):
            $img = $this->_View->Html->image($name);
        else:
            $img = $this->_View->Html->image($name, $options);
        endif;
        return $img;
    }

    public function isHome() {
        $home = false;
        if ($this->_View->request->params['action'] === 'promoted') {
            $home = true;
        }
        return $home;
    }

    public function menu($menuAlias, $options = array()) {

        $_options = array(
            'tag' => 'ul',
            'tagAttributes' => array(),
            'selected' => 'active',
            'dropdown' => false,
            'dropdownClass' => '',
            'dropdownMenuClass' => 'subnav',
            'toggle' => 'dropdown-toggle',
            'menuClass' => 'wrap topnav clearfix',
            'element' => 'menu'
        );

        $options = array_merge($_options, $options);

        if (!isset($this->_View->viewVars['menus_for_layout'][$menuAlias])) {
            return false;
        }

        $menu = $this->_View->viewVars['menus_for_layout'][$menuAlias];

        $output = $this->_View->element($options['element'], array(
            'menu' => $menu,
            'options' => $options,
        ));

        return $output;
    }

    public function nestedLinks($links, $options = array(), $depth = 1) {

        $_options = array();
        $options = array_merge($_options, $options);

        $output = '';
        foreach ($links AS $link) {
            $linkAttr = array(
                'id' => 'link-' . $link['Link']['id'],
                'rel' => $link['Link']['rel'],
                'target' => $link['Link']['target'],
                'title' => $link['Link']['description'],
                'class' => $link['Link']['class'],
            );

            foreach ($linkAttr AS $attrKey => $attrValue) {
                if ($attrValue == null) {
                    unset($linkAttr[$attrKey]);
                }
            }

            // if link is in the format: controller:contacts/action:view
            if (strstr($link['Link']['link'], 'controller:')) {
                $link['Link']['link'] = $this->_View->Layout->linkStringToArray($link['Link']['link']);
            }

            // Remove locale part before comparing links
            if (!empty($this->params['locale'])) {
                $currentUrl = substr($this->_View->request->url, strlen($this->params['locale']));
            } else {
                $currentUrl = $this->_View->request->url;
            }

            if (Router::url($link['Link']['link']) == Router::url('/' . $currentUrl)) {
                if (!isset($linkAttr['class'])) {
                    $linkAttr['class'] = '';
                }
                $linkAttr['class'] .= ' ' . $options['selected'];
            }

            $linkOutput = $this->_View->Html->link($link['Link']['title'], $link['Link']['link']);
            if (isset($link['children']) && count($link['children']) > 0) {
                $linkOutput = $this->_View->Html->link($link['Link']['title'] . '<b class="caret"></b>', $link['Link']['link'], array('class' => @$options['toggle'],
                    'data-toggle' => $options['dropdownClass'],
                    'escape' => false));
                @$linkAttr['class'] .= $options['dropdownClass'];
                $linkOutput .= $this->nestedLinks($link['children'], $options, $depth + 1);
            }
            $linkOutput = $this->_View->Html->tag('li', $linkOutput, $linkAttr);
            $output .= $linkOutput;
        }

        if ($output != null) {
            $tagAttr = $options['tagAttributes'];
            if ($options['dropdown'] && $depth == 1) {
                $tagAttr['class'] = $options['menuClass'];
            }
            if ($depth > 1) {
                $tagAttr['class'] = @$options['dropdownMenuClass'];
            }
            $output = $this->_View->Html->tag($options['tag'], $output, $tagAttr);
        }

        return $output;
    }

}