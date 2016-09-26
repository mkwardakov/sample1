#!//usr/bin/env ruby
def mymethod(str_arr)
    # first, sort array by element length, shortest first
    new_arr = Array.new(str_arr.sort_by(&:size))
    # second, put all foresters before
    cnt = 0
    while sf = new_arr.index("Subaru Forester")
        str = new_arr.slice!(sf) + " - this guy knows what to do very well"
        new_arr.insert(str, 0)
        cnt += 1
    end
    # third, move all other subaru closer
    subarus = new_arr.slice(cnt, new_arr - cnt - 1).search
    subarus.each
    return new_arr
end
