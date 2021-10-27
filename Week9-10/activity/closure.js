function f(name){
	var x = "hi there";
	function g(){
		return x + " " + name;
	}
	return g();
}
var k = f("bob");
console.log(k);
