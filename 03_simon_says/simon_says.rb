#write your code here
def echo(word)
  "#{word}"
end

def shout(word)
  "#{word.upcase}"
end

def repeat(word,x=2)
  statement = ""
  x.times do
    statement += word + " "
  end
  statement.strip
end

def start_of_word(word,letter)
  letter = letter-1
  word[0..letter]
end

def first_word(string)
  arr = string.split(" ")
  arr[0]
end

def titleize(word)
  arr = word.split(" ")
  arr.map!.with_index {|item,index|
    if index == 0
      item.capitalize
    elsif item == "or" || item == "and" || item == "the" || item == "over"
      item = item
    else
      item.capitalize
    end
  }
  words = arr.join(" ")
end
