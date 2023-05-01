class Film
   attr_reader :title, :description, :director, :producer

   def initialize(data)
      @title = data[:title]
      @description = data[:description]
      @director = data[:director]
      @producer = data[:producer]
   end
end