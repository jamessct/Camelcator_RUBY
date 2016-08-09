require('sinatra')
require('sinatra/contrib/all')
require('json')
require_relative('models/word_formatter')

get('/') do
  erb(:home)
end

get('/address') do
  content_type( :json )
  result = {
      address: '3 ARGYLE HOUSE',
      building: 'CODEBASE',
      postcode: 'e13 zqf',
      phone: '0131558030'
  }
  return result[:postcode].upcase.to_json()
  # result.to_json()
end

get('/camel_case/:word1') do
  camelcator = WordFormatter.new( params[:string1])
  @camelcation = camelcator.camel_case()
  erb(:camel_case)
end
