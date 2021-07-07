class Pokemon

    attr_accessor :id, :name, :type, :db

    def initialize(id:, name:, type:, db:)
        @id = id
        @name = name
        @type = type
        @db = db
    end
  
    def self.save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end
  
    # Find pokemon by id
    # Return new pokemon object

    def self.find(id, db)
        pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
        # binding.pry
        self.new(id: pokemon[0][0], name: pokemon[0][1], type: pokemon[0][2], db: db)
        # np = self.new(pokemon)
        # np.id
        # np.name
        # np.type
        
    end

  
end
