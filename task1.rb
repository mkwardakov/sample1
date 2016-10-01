#!/usr/bin/env ruby
def mymethod(str_arr)
    return [] if str_arr.empty?
    # first, sort array by element length, shortest first
    new_arr = Array.new(str_arr.sort_by(&:size))
    # second, seek through array and put subarus to beginning
    ind = 0
    foresters = 0
    subarus = 0
    until new_arr[ind].nil?
        # if found, pull it out, add a comment and insert to the beginning
        if 'Subaru Forester' == new_arr[ind]
            sub = new_arr.slice!(ind) << ' - this guy knows what to do very well'
            new_arr.insert(foresters, sub)
            foresters += 1
        elsif /^Subaru/ =~ new_arr[ind]
            sub = new_arr.slice!(ind) << ' - this guy knows what to do'
            new_arr.insert(foresters + subarus, sub)
            subarus += 1
        end
        ind += 1
    end
    new_arr
end
