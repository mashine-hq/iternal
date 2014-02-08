add_phone_field = (e) ->
  e.preventDefault()
  el = $('.company_phones').last().parent()
  el.clone().insertBefore(el).fadeIn().find("[name='remove_phone']").on "click.phone", remove_phone_field

remove_phone_field = (e) ->
  e.preventDefault()
  $(this).parent().fadeOut().remove()

$(document).ready ->
  $("[name='remove_phone']").on "click.phone", remove_phone_field
  $("[name='add_phone']").on "click.phone", add_phone_field

