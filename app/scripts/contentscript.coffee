'use strict';

template = '
<div id="talentrocket-scrape-repo" class="button primary sidebar-button" role="button" tabindex="0">
  <span class="octicon octicon-rocket"></span> 
  <span class="button-text">Scrape repo</span>
</div>'

talentrocket = require('talentrocket').api
talentrocket.Config.set_api_key('xxx')

$ ->
  $('body.vis-public .repository-sidebar').prepend template

  $('body').on 'click', '#talentrocket-scrape-repo', ->
    console.log 'clicked'

    # chrome.extension.getBackgroundPage()
    # open_auth()

  if $('body.page-profile').length == 1
    username = $('span.vcard-username').text()
    talentrocket.Profile.find_by (name: username), (response) ->
      if response.profiles
        list = ""

        for profile in response.profiles
          list += "<li>#{profile.uuid} - #{profile.type}</li>"

        $('h1').after("<ul>#{list}</ul>")
