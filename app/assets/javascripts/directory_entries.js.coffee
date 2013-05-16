# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("a.backup").on "ajax:success", ->
    alert("バックアップジョブが開始されました")
  $("a.retrieve-inventory").on "ajax:success", ->
    alert("インベントリ取得ジョブが開始されました")
