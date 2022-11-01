def find_nb(m)
    volume = 0
    number_of_rows = 1 

    while true
        volume += number_of_rows ** 3
        if volume >= m 
            return volume == m ? number_of_rows : -1
        end
        number_of_rows += 1     
    end
end