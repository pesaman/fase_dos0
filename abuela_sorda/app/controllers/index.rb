get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end

post '/abuelita' do
  user_input = params[:user_input]
  if user_input == user_input.downcase
    "HUH? !NO TE ESCUCHO, HIJO !"
  elsif user_input == user_input.upcase
    if user_input != "BYE TQM!"
      "NO ,DESDE 1963"
  else user_input == "BYE TQM"
    "ADIOS HIJO"
    end
  end 
end

