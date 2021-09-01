// Declarative 
var x = [1,2,3,4,5]
var y = x.map(function(n) {
  return n * 2
})
console.log(x) //=> [1,2,3,4,5]
console.log(y) //=> [2,4,6,8,10]