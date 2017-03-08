get '/' do
  erb :index

end

get '/:new_word' do
	@new_word = params[:new_word]
  @new_array_canonicals = Word.search_canonical(@new_word)
  erb :word
end

post '/new_word' do
  new_word = params[:new_word]
  redirect to ("/#{new_word}")
end

