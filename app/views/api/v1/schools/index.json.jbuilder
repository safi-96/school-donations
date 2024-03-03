json.data do
  json.schools @schools do |school|
    json.id school.id
    json.name school.name
  end
end

json.message "Success"
json.status 200