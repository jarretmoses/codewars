function findNumber(array) {
  for(var i = 1; i < array.length+1; i++){
    if(array.indexOf(i) < 0) return i;
  }
}