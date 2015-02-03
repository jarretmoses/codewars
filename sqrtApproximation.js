function sqrtApproximation(number) {
  for(var i = 0; i <= number; i++ ){
    if(i*i === number) return i;
    if(i*i < number && (i+1) * (i+1) > number) return [i,i+1];
  }
}