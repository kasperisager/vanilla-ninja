<?php if (!defined('APPLICATION')) exit();

/**
 * Ninja
 *
 * @package Ninja
 * @version 1.0.0
 * @author Kasper K. Isager
 * @copyright Copyright 2013 (c) Kasper K. Isager
 * @license http://opensource.org/licenses/MIT MIT
 */

class NinjaThemeHooks implements Gdn_IPlugin {

    /**
     * Allows direct access to Ninja's package.json
     *
     * @return string The decoded JSON from package.json
     * @package Ninja
     * @since 1.0.0
     */
    private function NinjaPackage() {
        return json_decode(file_get_contents(__DIR__.DS.'package.json'));
    }

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
     * Add "livereload.js" to head asset if on localhost
     *   - Activate LiveReload using $ grunt ninja
     *
     * @package Ninja
     * @since 1.0.0
     */
    public function Base_Render_Before($Sender) {
        if (!InSection('Dashboard')):

            if ($_SERVER['SERVER_ADDR'] == '127.0.0.1'):
                $Sender->AddJsFile('//localhost:35729/livereload.js?snipver=1');
            endif;

            $Sender->AddJsFile('modernizr.min.js');
            $Sender->AddJsFile('conditionizr.min.js');
            $Sender->Head->AddString('
<script>
conditionizr({
    debug      : true,
    chrome     : { classes: true },
    safari     : { classes: true },
    opera      : { classes: true },
    firefox    : { classes: true },
    ie10       : { classes: true },
    ie9        : { classes: true },
    retina     : { classes: true },
    mac        : true,
    win        : true,
    x11        : true,
    linux      : true
});
</script>
            ');

            $Sender->AddJsFile('ninja.js');

        endif;
    }

    /**
     * Add "Powered by" links to the footer asset
     *
     * @package Ninja
     * @since 1.0.0
     */
    public function Base_BeforeRenderAsset_Handler($Sender) {

        $AssetName = GetValueR('EventArguments.AssetName', $Sender);

        $NinjaPackage = $this->NinjaPackage();
        $NinjaName = $NinjaPackage->name;
        $NinjaUrl = $NinjaPackage->author->url;
        $VanillaUrl = C('Garden.VanillaUrl');
 
        if ($AssetName == 'Foot'):
            ?>
            <div class="Copyright">
                <p><?php echo T('Copyright ©').' '.date('Y').' '.Anchor('Kaarinoku', $NinjaPackage->author->url); ?>
                </p>
            </div>
            <div class="Credits">
                <p><?php echo T('Powered by').' '.Anchor('Vanilla', $VanillaUrl).' '.T('and').' '.Anchor($NinjaName, $NinjaUrl); ?></p>
            </div>
            <?php
        endif;

    }

    /**
     * No setup required
     */
    public function Setup() {
        return TRUE;
    }

    /**
     * No cleanup required
     */
    public function OnDisable() {
        return TRUE;
    }

}