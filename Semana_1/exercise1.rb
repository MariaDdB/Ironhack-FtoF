#Exercise 1

def DashInsertII(num)
    str=''
    cont = num.length

    for i  in 0..cont - 1
        if i === cont -1
            str.concat num[i]
        else
            if num[i].to_i % 2 == 0 && num[i+1].to_i % 2 == 0
            str.concat num[i]
            str.concat '*'
        
            elsif num[i].to_i % 2 != 0 && num[i+1].to_i % 2 != 0
                str.concat num[i]
                str.concat '-'
            else
                str.concat num[i]
            end

        end
     
     end
    puts str
return str


end
#check your function
prueba = DashInsertII("99946") == "9-9-94*6"
prueba = DashInsertII("56647304") == "56*6*47-304"
