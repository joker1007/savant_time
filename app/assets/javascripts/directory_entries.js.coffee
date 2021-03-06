# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("a.backup").on "ajax:success", ->
    alert("バックアップジョブが開始されました")
  $("#bulk-archive-form").on "ajax:success", ->
    alert("バックアップジョブが開始されました")
  $("a.js-retrieve-inventory").on "ajax:success", ->
    alert("インベントリ取得ジョブが開始されました")
  $("a.js-retrieve-archive").on "ajax:success", ->
    alert("アーカイブ取得ジョブが開始されました")
  $("a.js-destroy-archive").on "ajax:success", ->
    alert("アーカイブの削除を実行しました")
  $(".js-all-check").click ->
    $(".js-archive-target").attr("checked", "checked")
  $(".js-all-uncheck").click ->
    $(".js-archive-target").removeAttr("checked")
