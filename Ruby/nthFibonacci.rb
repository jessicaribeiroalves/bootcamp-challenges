def nthFibonacci (n)
    arr = [0,1]
	i = 0
  	while i <= n
        arr.push(arr[i]+arr[i+1])
        i += 1
    end
    arr[n]
end