require 'rails_helper'

RSpec.describe WordService do
    it "establishes a connection" do
        conn = WordService.conn

        expect(conn.class).to eq(Faraday::Connection)
    end

    it "gets a word at a specified length", :vcr do
        response = WordService.get_random_word_at_length(5)

        expect(response).to be_a Array
        expect(response[0]).to be_a String
        expect(response[0].length).to eq 5
    end    
end