var isMonotone = function(arr){
  var result = true;

  while(arr.length > 1 && result){
    var val = arr.shift();
    result = arr.every(function(testVal){ return testVal >= val });
  }
  
  return result;
}
