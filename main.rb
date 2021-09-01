def merge(a, b)
  sorted = []
  until a.empty? || b.empty?
    if a[0] < b[0]
      sorted << a.shift
    else 
      sorted << b.shift
    end
  end
  a.empty? ? sorted.concat(b) : sorted.concat(a)
  return sorted
end

def mergeSort(arr)
  return arr if arr.length <= 1
  a = arr[0..arr.length/2-1]
  b = arr[arr.length/2.. arr.length-1]
  return merge(mergeSort(a), mergeSort(b))
end

arr = Array.new(100).map {|i| rand(100)}
mergeSort(arr)