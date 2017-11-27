json.extract! item, :id, :project_id, :text, :caption, :created_at, :updated_at
json.image_url asset_path(item.image.url(:original))
