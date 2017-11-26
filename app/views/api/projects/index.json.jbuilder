@projects.each do |proj|
    json.partial! 'api/projects/project', project: proj 
end 