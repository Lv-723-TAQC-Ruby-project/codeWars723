def balance(b)
    array_of_strings = b.split("\n")
    balance = array_of_strings.delete_at(0).to_f
    string_to_return = "Original Balance: #{'%.2f' % balance}"
    total_expense = 0
    total_items = 0
    for i in array_of_strings
        if i.empty?
            next
        end
        temp_array = i.split
        price_of_item = temp_array[2].gsub(/[^0-9. ]/i, '').to_f
        total_expense += price_of_item
        total_items += 1
        balance -= price_of_item
        price_of_item = '%.2f' % price_of_item
        string_to_return += "\r\n#{temp_array[0]} #{temp_array[1].gsub(/[^a-zA-Z ]/i, '')} #{price_of_item.to_s} Balance #{'%.2f' % balance}"
    end
    string_to_return += "\r\nTotal expense  #{'%.2f' % total_expense}\r\nAverage expense  #{'%.2f' % (total_expense/total_items)}"

    string_to_return
end