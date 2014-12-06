'use strict';

open_auth = ->
  client_id     = 'c3e916e98a714cab44ef993ef1b673dce38ec297178f602ff04192d662c7486f'
  redirect_uri  = encodeURIComponent(chrome.identity.getRedirectURL())

  url = "https://talentrocket.io/oauth/authorize?client_id=#{client_id}&redirect_uri=#{redirect_uri}&response_type=token"

  chrome.identity.launchWebAuthFlow ('url': url, 'interactive': true), (redirect_url) ->
    alert redirect_url

open_auth()
