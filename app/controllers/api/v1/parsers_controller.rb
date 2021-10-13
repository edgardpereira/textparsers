class Api::V1::ParsersController < ApplicationController

    def index
        words = params["text"].split
        wordlists = words.map.each_with_object(Hash.new(0)) {|word,counts|counts[word] += 1}
        resp = []
        wordlists.each do |k,v|
          resp << {word: k, count: v}
        end
        render json: resp
    end

end
