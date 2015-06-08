sentence = "How are you?"
sentece.chas.reduce do |memo, char|
	if ["a", "e", "i", "o", "u" ].include? char 
		memo + char * 5
	else
		memo + char
	end
end

#reduce("") se inicia solo si la primera letra de la frase fuera vocal.