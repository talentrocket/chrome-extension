'use strict';

template = '
<div id="talentrocket-scrape-repo" class="button primary sidebar-button" role="button" tabindex="0">
  <span class="octicon octicon-rocket"></span> 
  <span class="button-text">Scrape repo</span>
</div>'

$ ->
  $('body').on 'click', '#talentrocket-scrape-repo', ->
    alert 'clicked'

  $('body.vis-public .repository-sidebar').prepend template

chrome.storage.sync.set (uuid: 'George'), ->
  console.log('saved uuid')
