def dictionary
  {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
    # replaces long words with their expected short form
      tweet.split(" ").map do |word|
        if dictionary.keys.include?(word.downcase)
          word = dictionary[word.downcase]
        else
          word
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |phrase|
    phrase = word_substituter(phrase)
    puts "#{phrase}"
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
  end
end

def shortened_tweet_truncator(tweet)
  short = word_substituter(tweet)
  if short.length > 140
    short[0..136].concat("...")
  else
    short
  end
end
