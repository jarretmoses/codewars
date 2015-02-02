function toWeirdCase(string){
  return string.split(' ').map(function(word){
    return caser(word);
  }).join(' ');
}

function caser(word){
  return word.split('').map(function(char,i){
    return i % 2 === 0 ? char.toUpperCase() : char.toLowerCase();
  }).join('');
}  