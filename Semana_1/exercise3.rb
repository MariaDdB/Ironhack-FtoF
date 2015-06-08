def PalindromeTwo(str)

    str_wo_s = str.gsub(/[\W,\s]/,'').downcase

    
    if str_wo_s === str_wo_s.reverse
        
        puts str_wo_s.reverse
        puts true
    else

        puts false
    end
end

PalindromeTwo("Noel - sees Leon") == true
PalindromeTwo("A war at Tarawa") == true