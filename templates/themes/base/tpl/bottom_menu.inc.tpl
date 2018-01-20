    <nav class="bottom_nav">
      <div role="listbox" class="dropdown_menu ft_dm">
        <span class="dropdown_item_css">
          <a rel="nofollow" href="{{ $design->url('page','main','faq') }}" class="dropdown_item" data-load="ajax">{lang 'Help'}</a>
        </span>
        <ul class="show_dropdown">
          <li><a href="{{ $design->url('page','main','faq') }}" title="{lang 'Frequently Asked Questions'}">{lang 'FAQ'}</a></li>
          <li><a href="{{ $design->url('page','main','terms') }}" title="{lang 'Terms of Use'}" data-load="ajax">{lang 'Terms of Use'}</a></li>
          <li><a href="{{ $design->url('page','main','privacy') }}" title="{lang 'Privacy Policy'}" data-load="ajax">{lang 'Privacy'}</a></li>
          <li><a href="{{ $design->url('page','main','legalnotice') }}" title="{lang 'Legal Notice'}" data-load="ajax">{lang 'Legal Notice'}</a></li>
          <li class="dm_self"><span class="dropdown_item">{lang 'Help'}</span><i></i></li>
        </ul>
      </div> |

      {if !$is_user_auth AND $is_newsletter_enabled}
        <a href="{{ $design->url('newsletter','home','subscription') }}" title="{lang 'Subscribe to our newsletter!'}" data-popup="block-page">{lang 'Newsletter'}</a> |
      {/if}
      {if $is_invite_enabled}
        <a rel="nofollow" href="{{ $design->url('invite','home','invitation') }}" title="{lang 'Invite your friends!'}" data-popup="block-page">{lang 'Invite'}</a> |
      {/if}

    </nav>
