def calculate_result(point_total)
    if point_total <= 15 && point_total >= 0
        return "jiaming"
    elsif point_total >=16 && point_total <= 30
        return "taylor"
    else
        return "isabel"
    end
end