'use strict';

template = '
<div id="talentrocket-scrape-repo" class="button primary sidebar-button" role="button" tabindex="0">
  <span class="octicon octicon-rocket"></span> 
  <span class="button-text">Scrape repo</span>
</div>'

talentrocket = require('talentrocket')

$ ->
  $('body.vis-public .repository-sidebar').prepend template

  $('body').on 'click', '#talentrocket-scrape-repo', ->
    console.log 'clicked'
    
    console.log talentrocket #.Profile.find_by(name: 'name')

    # chrome.extension.getBackgroundPage()
    # open_auth()
