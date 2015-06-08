def NumberEncoding(str)
    new_str = ""
    char = ""
	
	for i in 0..str.length-1
        if str[i].ord >= 97 && str[i].ord <=122
            	char = str[i].ord-96
            	new_str.concat char.to_s
        else 
            	new_str.concat str[i]    
        end
    end
    
    puts new_str
 	
 	return new_str

end

NumberEncoding("hello 45")  == "85121215 45"
NumberEncoding("jaj-a")  == "10110-1"

=begin
def NumberEncoding(str)
    out = ''

    for i in 0..(str.length-1)
        str[i].downcase!
        if str[i].ord.between?(97,122)
            out << (str[i].ord - 96).to_s
        else
            out << str[i]
        end
    end

 return out

end

NumberEncoding("hello 45")  == "85121215 45"
NumberEncoding("jaj-a")  == "10110-1"
=end
