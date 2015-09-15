json.contacts contacts do |contact|
  json.partial! '/contacts/details', :contact => contact
end
