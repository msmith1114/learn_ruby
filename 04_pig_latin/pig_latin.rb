#write your code here
def translate(sentence)
  sentence = sentence.split(" ")
  sentence.map! { |word|
  arr = word.split("")
  newarr = []
  lastPart = ""
  vowelFlag = false
  arr.each.with_index {|letter,index|
    if !letter.match(/[aeio]/) && vowelFlag == false
      newarr.push(letter)
    elsif letter.match(/[aeio]/) && vowelFlag == false
      vowelFlag = true
      lastPart = arr.slice(index..-1)
    end

  }
  word = lastPart.join("") + newarr.join("") + "ay"
  }
  sentence.join(" ")
end
