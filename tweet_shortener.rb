def dictionary
    dictionary = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "For" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet_string)
    tweet_string_array = tweet_string.split(" ")
    tweet_string_array.each_with_index do |word, index|
        if dictionary.keys.include?(word)
            tweet_string_array.insert(index, dictionary[word])
            tweet_string_array.delete_at(index + 1)
        end
    end
    output_tweet = tweet_string_array.join(" ")
    puts output_tweet
    output_tweet
end

def bulk_tweet_shortener(tweet)
    tweet.each do |string|
      word_substituter(string)
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
    new_tweet = ""
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      new_tweet = new_tweet[0..136]
      new_tweet << "..."
      puts new_tweet
      new_tweet
    else
      new_tweet
    end
end