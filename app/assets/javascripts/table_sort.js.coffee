$ ->
  $('.table-sortable').sortable
    axis: 'y'
    items: '.item'

    update: (e, ui) ->
      item = ui.item
      item_data = item.data()
      params = { _method: 'put' }
      params[item_data.modelName] = { position: item.index() }
      $.ajax
        type: 'POST'
        url: item_data.updateUrl
        dataType: 'json'
        data: params
    start: (e, ui) ->
      tablewidth = $(this).width()
      cells = ui.item.children('td')
      widthForEachCell = tablewidth / cells.length + 'px'
      cells.css('width', widthForEachCell)
    stop: (e, ui) ->
      ui.item.children('td').effect('highlight')
