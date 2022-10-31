def new_avg(arr, newavg)
    expected_donation = newavg*(arr.length() + 1) - arr.sum
    expected_donation > 0 ? expected_donation.ceil : raise 
end