json.array!(@u_ssers) do |u_sser|
  json.extract! u_sser, :id, :name, :email
  json.url u_sser_url(u_sser, format: :json)
end
