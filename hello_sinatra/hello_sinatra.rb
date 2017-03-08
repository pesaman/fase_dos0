require "sinatra"
get '/:nombre' do
  count_vowels("#{params['captures']}")
end

  def count_vowels(names)
   cont = names.scan(/[aeouiAEIOUáéíóú]/)
   vocal = cont.count.to_s
   p "Tu name: #{ names} tiene #{vocal} vocales"
  end
    




