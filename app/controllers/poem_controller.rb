class PoemController < ApplicationController
  before_filter :authorize
  def new
      eightyeight_array = Article.find(params[:article_id])
      new_88_array = []

      lengthcalc = eightyeight_array.article_text.split.select do |word|
               if word.include? "a"
                   word
                elsif word.include? "o"
                  word
             end
          end

      lengthcalc.map do |x|
        if x.length >= 3
          new_88_array.push(x)
        end
      end

      shuffle88_arr = new_88_array.shuffle
     string = shuffle88_arr[rand(55..60)..rand(61..70)].join(" ").gsub(/[.()""]/, ' ')
     @poem1 = string.slice(0,1).capitalize + string.slice(1..-1)
      string2 = shuffle88_arr[rand(20..30)..rand(30..33)].join(" ").gsub(/[.()""]/, ' ')
     @poem2 = string2.slice(0,1).capitalize + string2.slice(1..-1)
     string3 = shuffle88_arr[rand(21..23)..rand(24..28)].join(" ").gsub(/[.()""]/, ' ')
     @poem3 = string3.slice(0,1).capitalize + string3.slice(1..-1)
     @list_item1 = shuffle88_arr[rand(20..24)..rand(25..35)]
     @list_item2 = shuffle88_arr[rand(79..84)..rand(85..95)]
     @list_item3 = shuffle88_arr[rand(30..34)..rand(35..45)]
     @list_item4 = shuffle88_arr[rand(50..54)..rand(55..65)]
     @list_item5 = shuffle88_arr[rand(80..84)..rand(90..95)]
    @new_arr = shuffle88_arr[rand(1..3)..rand(4..9)]

  end
end
