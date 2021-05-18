class Member
    attr_accessor :name, :power, :biography
    @@members = []

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @biography = params[:biography]
        save
    end

    def save
        @@members << self 
    end

    def self.all
        @@members
    end

end