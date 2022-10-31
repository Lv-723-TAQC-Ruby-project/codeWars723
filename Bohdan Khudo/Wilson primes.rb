def bkh7_am_I_Wilson(p)
  if p == 5 || p == 13 || p == 563
    return true
  else
    return false
  end
end
# second way
# def am_I_Wilson(p)
#   if p == 0
#     return false
#   else
#     res = (factorial(p - 1) + 1.0) / (p * p)
#     if res % 1 == 0
#       return true
#     else
#       return false
#     end
#   end
# end
#
# def factorial(x)
#   f = 1;
#   for i in 1..x
#     f *= i
#   end
#   return f
# end
#
# puts am_I_Wilson(5)
