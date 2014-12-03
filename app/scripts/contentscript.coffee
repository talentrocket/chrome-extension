'use strict';

console.log('\'Allo \'Allo! Content script')

$ ->
  $('.only-with-full-nav').append '<p><a href="/">h1 replacement</a></p>'

chrome.storage.sync.set (uuid: 'George'), ->
  console.log('saved uuid')
