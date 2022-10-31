def converter(mpg, cof = 1.609344 / 4.54609188)
    return (mpg * cof).round(2)
end