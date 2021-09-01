// Imperative
var x = [1,2,3,4,5]
var y = []
for(var i = 0; i < x.length; i++) {
	var temp = x[i] * 2
  	y.push(temp)
}
console.log(x) //=> [1,2,3,4,5]
console.log(y) //=> [2,4,6,8,10]
