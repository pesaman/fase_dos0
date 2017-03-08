require 'csv'

# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
def mostrar_diccionary
   CSV.foreach("words.csv").each do |palabra|
   words = palabra[0]    
    words.split("").split.sort.join
    Word.create(word: palabra[0], canonical: words)
  end
end
  mostrar_diccionary

