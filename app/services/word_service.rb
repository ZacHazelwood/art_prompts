class WordService
    def self.conn
        Faraday.new(url: "https://random-word-api.herokuapp.com/")
    end   

    def self.get_random_word_at_length(length)
        response = conn.get("word") do |f|
            f.params['length'] = length
        end
        JSON.parse(response.body, symbolize_names: true)
    end
    
    def self.get_random_word
        response = conn.get("word")
        JSON.parse(response.body, symbolize_names: true)
    end    
end   