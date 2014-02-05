$ ->
  $('[data-url]').on 'click', ->
    console.log $(this).data('url')
    window.location = $(this).data('url')
