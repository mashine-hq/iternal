add_phone_field = (e) ->
  e.preventDefault()
  $(this).prev().clone().hide().insertBefore(this).fadeIn().find("button[name='remove_phone']").on "click.phone", remove_phone_field
  console.log "add that phone"
remove_phone_field = (e) ->
  e.preventDefault()
  $(this).parent().fadeOut().remove()
  console.log "remove that phone"
$(document).ready ->
  $("button[name='remove_phone']").on "click.phone", remove_phone_field
  $("button[name='add_phone']").on "click.phone", add_phone_field

