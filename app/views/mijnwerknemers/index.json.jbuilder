json.array!(@mijnwerknemers) do |mijnwerknemer|
  json.extract! mijnwerknemer, :id, :aandoening, :advies
  json.url mijnwerknemer_url(mijnwerknemer, format: :json)
end
