

Fibonacci := Object clone
Fibonacci toTheNth := 2
Fibonacci fibonacci := method(toTheNth
	value := 1
	sumTmp := 0
	sumLow := 0
	sumHigh := 1
	while(  value <= toTheNth,
	 sumTmp = sumLow + sumHigh
	 sumLow = sumHigh
	 sumHigh = sumTmp
	 value = value +1
	)
	sumHigh println
	)

#1, 1, 2, 3,5, 8, 13, 21
Fibonacci fibonacci