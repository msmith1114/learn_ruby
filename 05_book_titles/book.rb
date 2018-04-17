class Book
# write your code here
  attr_reader :title

  def title=(new_title)
    @title = book_rules(new_title)
  end

  def book_rules(title)
    wordArr = title.split(" ")
    wordArr.map!.with_index {|word,index|
      if word == 'i'
        word = word.upcase
      elsif %{and, or, but, the, in, on, of, a, an}.include? word
        unless index == 0
          word = word
        else
          word.capitalize
        end
      else
        word.capitalize
      end
    }
    wordArr.join(" ")

  end

end
