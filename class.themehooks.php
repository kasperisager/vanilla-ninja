<?php if (!defined('APPLICATION')) exit();

/**
 * Include the NinjaTheme class
 *
 * This class contains all the code required by the example Ninja theme. Feel
 * free to delete the file aand this include if you wish to start with a blank
 * Vanilla theme.
 */
include_once('class.ninjatheme.php');

/**
 * [Your Theme] - [Your Description]
 *
 * @package [Your Package]
 * @version 1.0.0
 * @author [Your Name]
 * @copyright Copyright [Year] (c) [Your Name]
 * @license http://opensource.org/licenses/[License] [License]
 */

class YourThemeHooks implements Gdn_IPlugin { 

    /**
     * Add Contionizr and Modernizr
     * Add LiveReload function if on localhost
     *   - Activate LiveReload using $ grunt ninja
     *
     * @package [Your Package]
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

        endif;
    }

    /**
     * No setup required
     *
     * @package [Your Package]
     * @since 1.0.0
     */
    public function Setup() {
        return TRUE;
    }

    /**
     * No cleanup required
     *
     * @package [Your Package]
     * @since 1.0.0
     */
    public function OnDisable() {
        return TRUE;
    }

}