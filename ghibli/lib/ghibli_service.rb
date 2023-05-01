class GhibliService

   def films
      response = get_url("https://limitless-castle-00011.herokuapp.com/films")
      parsed = films_parsed(response)
   end

   def films_parsed(response)
      JSON.parse(response.body, symbolize_names: true)
   end

   def get_url(url)
      response = HTTParty.get(url)
   end
end