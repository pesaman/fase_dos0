get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

get '/' do
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 

end

get '/short_url/:url_id' do
  p url = Url.find(params[:url_id])
  #redirigir al sitio de la url, usando long_url
  #redirect
  if url
    url.click_count += 1
    url.save
    # url.update(click_count: click_count += 1)
  end
  long = url.long_url
  redirect to("#{long}")
 # redirect to("https://google.com")
end

# e.g., /q6bda
get '/:short_url' do
  @ulr = Url.all
  erb :list_url
end

post '/urls' do
  # crea una nueva Url
  word_url  = params[:word_url]
  # here we send the input to model/url.rb /self.valid_url?(url) and we receive the result wiuth variable 'validate_result'
  validate_result = Url.valid_url?(word_url)
  if validate_result == true
    ulr = Url.create(long_url: word_url)
    ulr.valid?
    redirect to("/short_url")
  else 
    @error_url =  "Tienes que introducir tu url con: http://www."
    erb :error_url
  end
end



