json.array!(@lodgers) do |lodger|
  json.extract! lodger, :id, :name, :email, :phone, :references, :occupation, :sex
  json.url lodger_url(lodger, format: :json)
end
