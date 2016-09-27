#!/usr/bin/env ruby
def mymethod(str_arr)
    return [] if str_arr.empty?
    # first, sort array by element length, shortest first
    new_arr = Array.new(str_arr.sort_by(&:size))
    # second, seek through array and put subarus to beginning
    ind, foresters, subarus = 0, 0, 0
    while ! new_arr[ind].nil?
        if "Subaru Forester" == new_arr[ind]
            sub = new_arr.slice!(ind) << " - this guy knows what to do very well"
            p sub, ind, foresters, subarus
            new_arr.insert(foresters, sub)
            foresters += 1
        elsif /^Subaru/ =~ new_arr[ind]
            sub = new_arr.slice!(ind) << " - this guy knows what to do"
            p sub, ind, foresters, subarus
            new_arr.insert(foresters + subarus, sub)
            subarus += 1
        else
            ind += 1
        end
    end
    return new_arr
end
