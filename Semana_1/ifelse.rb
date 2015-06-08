["cat", "sheep", "bear"].reduce do |memo, word|
	memo.length > word.length ? puts memo : puts word
end