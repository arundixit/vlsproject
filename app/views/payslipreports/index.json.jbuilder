json.array!(@payslipreports) do |payslipreport|
  json.extract! payslipreport, 
  json.url payslipreport_url(payslipreport, format: :json)
end
