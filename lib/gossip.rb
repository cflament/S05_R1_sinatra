require 'csv'

class Gossip
    attr_accessor :author, :content

    def initialize(author,content)
        @author = author
        @content = content    
    end 

    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
          csv << [@author, @content]
        end
    end

    def self.all
        all_gossips = []
        CSV.read("./db/gossip.csv").each do |row|
            all_gossips << Gossip.new(row[0],row[1])
        end 
        return all_gossips
    end

    def self.find(id)
        id = id.to_i
        all_gossips = self.all 
        return all_gossips[id]
    end

    def self.update(id, auteur, contenu) 
        a = Gossip.all
        modif = a[id.to_i]
        modif.author = auteur
        modif.content = contenu
          CSV.open("./db/gossip.csv", "w") do |csv|
            a.each do |gossip|
              csv << [gossip.author, gossip.content]
            end
        end
    end 

end 