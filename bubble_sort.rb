unsorted = [4,3,78,2,0,2]

def bubble_sort(list)
    length = list.length
    length.times do |i|
        for j in 1..length - 1
            # check if item ahead is less than item behind
            # if it is, then switch them
            if list[j] < list[j - 1]
                tmp = list[j]
                list[j] = list[j - 1]
                list[j - 1] = tmp
            end
        end
    end
    list
end

bubble_sort(unsorted)