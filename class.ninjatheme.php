<?php if (!defined('APPLICATION')) exit();

/**
 * Ninja - A super sneaky Node.js, Grunt and Bower powered scaffold for building
 * superb Vanilla themes. Ninja allows you to easily use your choice of 
 * preprocessors and languages in your themes and enables you to write kick-ass
 * build processes using the many plugins available for Grunt.
 *
 * @package Ninja
 * @version 1.0.0
 * @author Kasper K. Isager
 * @copyright Copyright 2013 (c) Kasper K. Isager
 * @license http://opensource.org/licenses/MIT MIT
 */

class NinjaTheme implements Gdn_IPlugin {

    /**
     * Set translation strings
     *
     * @package Ninja
     * @since 1.0.0
     */
    public function Gdn_Dispatcher_BeforeDispatch_Handler($Sender) {

        // Breadcrumbs separator
        Gdn::Locale()->SetTranslation('Breadcrumbs Crumb', '/');

        // Pager buttons
        Gdn::Locale()->SetTranslation('«', '&laquo;');
        Gdn::Locale()->SetTranslation('»', '&raquo;');

    }

    /**
     * Add "ninja.css" and "bootstrap.css" to head asset
     *
     * @package Ninja
     * @since 1.0.0
     */
    public function AssetModel_StyleCss_Handler($Sender) {
        $Sender->AddCssFile('ninja.css');
        $Sender->AddCssFile('bootstrap.css');
    }

    /**
     * Add "ninja.js" to head asset
     *
     * @package Ninja
     * @since 1.0.0
     */
    public function Base_Render_Before($Sender) {
        if (!InSection('Dashboard')):
            $Sender->AddJsFile('ninja.js');
        endif;
    }

    /**
     * No setup required
     *
     * @package Ninja
     * @since 1.0.0
     */
    public function Setup() {
        return TRUE;
    }

    /**
     * No cleanup required
     *
     * @package Ninja
     * @since 1.0.0
     */
    public function OnDisable() {
        return TRUE;
    }

}
