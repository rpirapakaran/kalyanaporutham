<?php
/**
 * @author         Pierre-Henry Soria <ph7software@gmail.com>
 * @copyright      (c) 2012-2017, Pierre-Henry Soria. All Rights Reserved.
 * @license        GNU General Public License; See PH7.LICENSE.txt and PH7.COPYRIGHT.txt in the root directory.
 * @package        PH7 / App / System / Module / Chatroulette / Controller
 */

namespace PH7;

use PH7\Framework\Mvc\Model\DbConfig;
use PH7\Framework\Parse\SysVar;
use PH7\Framework\Url\Url;

class HomeController extends Controller
{

    public function index()
    {
        $this->view->page_title = t('Free Video Room, Live Speed Dating ChatRoulette');
        $this->view->meta_description = t('Free Live Kalyana Porutham with the Chatroulette of %site_name%, Meet your Soulmate, Free online Kalyana Porutham site for singles without registration with Video Chat Rooms!');
        $this->view->meta_keywords = t('chat, chatroulette, Kalyana Porutham, chat room, chat webcam');
        $this->view->h1_title = t('Welcome to <span class="pH1">Kalyana Porutham ChatRoulette</span> of <span class="pH0">%site_name%</span>!');
        $this->view->chatroulette = Url::clean( (new SysVar)->parse( DbConfig::getSetting('chatrouletteApi') ) );
        $this->output();
    }

}
