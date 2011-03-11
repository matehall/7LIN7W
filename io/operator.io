OperatorTable addOperator("xor",11)
OperatorTable println

true xor := method(bool,if(bool,false,true))
false xor := method(bool,if(bool,true,false))

(true xor true) println
false xor false println
true xor false println
false xor true println
