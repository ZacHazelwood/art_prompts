require 'rails_helper'

RSpec.describe WordService do
    it "establishes a connection" do
        conn = WordService.conn

        expect(conn.class).to eq(Faraday::Connection)
    end

    it "gets a word", :vcr do
        response = WordService.get_random_word(5)

        expect(response).to be_a Array
        expect(response[0]).to be_a String
    end    
end