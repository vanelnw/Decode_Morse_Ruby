MORSECODE = {
    ".-" => "a",
    "-..." => "b",
    "-.-." => "c",
    "-.." => "d",
    "." => "e",
    "..-." => "f",
    "--." => "g",
    "...." => "h",
    ".." => "i",
    ".---" => "j",
    "-.-" => "k",
    ".-.." => "l",
    "--" => "m",
    "-." => "n",
    "---" => "o",
    ".--." => "p",
    "--.-" => "q",
    ".-." => "r",
    "..." => "s",
    "-" => "t",
    "..-" => "u",
    "...-" => "v",
    ".--" => "w",
    "-..-" => "x",
    "-.--" => "y",
    "--.." => "z",
}

def decode_char(char)
    MORSECODE[char].upcase
end

def decode_word(word)
    wordArray = word.split(" ")
    returnWord = ""
    for i in 0...wordArray.length
        returnWord += decode_char(wordArray[i])
    end
    returnWord
end

def decode(phrase)
    phraseArray = phrase.split("   ")
    returnPhrase = ""

    returnPhrase = phraseArray.map{|w| decode_word(w)}.join(" ")

    returnPhrase
end

puts decode("-- -.--   -. .- -- .")

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")