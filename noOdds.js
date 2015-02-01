function noOdds( values ){
  return values.filter(function(value){ return value % 2 === 0 });
}