class WordService
    def self.conn
        Faraday.new(url: "https://random-word-api.herokuapp.com/")
    end   

    def self.get_random_word(length)
        response = conn.get("word") do |f|
            f.params['length'] = length
        end
        JSON.parse(response.body, symbolize_names: true)
    end   
end   