{if $_tpl == "box"}
  <li class="col-md-6 col-lg-3">
    <div class="ui-box {if $_darker}darker{/if}">
      <div class="img">
        <a href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">
          <img alt="{$_page['page_title']}" src="{$_page['page_picture']}" />
        </a>
      </div>
      <div class="mt10">
        <span class="js_user-popover" data-uid="{$_page['page_id']}" data-type="page">
          <a class="h6" href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">{$_page['page_title']}</a>
        </span>
        {if $_page['page_verified']}
          <span class="verified-badge" data-bs-toggle="tooltip" title='{__("Verified Page")}'>
            {include file='__svg_icons.tpl' icon="verified_badge" width="20px" height="20px"}
          </span>
        {/if}
        <div>{$_page['page_likes']} {__("Likes")}</div>
      </div>
      <div class="mt10">
        {if $_page['i_like']}
          <button type="button" class="btn btn-sm btn-primary js_unlike-page" data-id="{$_page['page_id']}">
            <i class="fa fa-heart mr5"></i>{__("Unlike")}
          </button>
        {else}
          <button type="button" class="btn btn-sm btn-primary js_like-page" data-id="{$_page['page_id']}">
            <i class="fa fa-heart mr5"></i>{__("Like")}
          </button>
        {/if}
      </div>
    </div>
  </li>
{elseif $_tpl == "list"}
  <li class="feeds-item">
    <div class="data-container {if $_small}small{/if}">
      <a class="data-avatar" href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">
        <img src="{$_page['page_picture']}" alt="{$_page['page_title']}">
      </a>
      <div class="data-content">
        <div class="float-end">
          {if $_page['i_like']}
            <button type="button" class="btn btn-sm btn-primary js_unlike-page" data-id="{$_page['page_id']}">
              <i class="fa fa-heart mr5"></i>{__("Unlike")}
            </button>
          {else}
            <button type="button" class="btn btn-sm btn-light rounded-pill js_like-page" data-id="{$_page['page_id']}">
              {include file='__svg_icons.tpl' icon="plus" class="main-icon" width="20px" height="20px"}
            </button>
          {/if}
        </div>
        <div>
          <span class="name js_user-popover" data-uid="{$_page['page_id']}" data-type="page">
            <a href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">{$_page['page_title']}</a>
          </span>
          {if $_page['page_verified']}
            <span class="verified-badge" data-bs-toggle="tooltip" title='{__("Verified Page")}'>
              {include file='__svg_icons.tpl' icon="verified_badge" width="20px" height="20px"}
            </span>
          {/if}
          <div>{$_page['page_likes']} {__("Likes")}</div>
        </div>
      </div>
    </div>
  </li>
{/if}