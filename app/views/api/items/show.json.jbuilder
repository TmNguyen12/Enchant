json.set! @item.id do 
  json.partial! 'api/items/item', item: @item 
end 