arr = []
json.byId do 
  @items.each do |item| 
    json.set! item.id do 
      json.partial! 'api/items/item', item: item 
    end 
    arr << item.id  
  end 
end 
json.allIds do 
  json.array! arr
end

