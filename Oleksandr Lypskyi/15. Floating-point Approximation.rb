require "bigdecimal/math"
include BigMath

def f (x)
    BigMath.sqrt((1 + BigDecimal("#{x}")), 20) - 1
end