function once(fn) {
  var used = false;
  return function(){
    if(!used){
      used = true;
      return fn.apply(this,arguments);
    }
  }
}