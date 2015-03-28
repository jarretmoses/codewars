function SubstitutionCipher(abc1, abc2) {
  this.encode = function (str) {
   return this.swap(str,abc1,abc2);
  }
  this.decode = function (str) {
    return this.swap(str,abc2,abc1);
  }

  this.swap = function(str, from, to) {
     return str.split('').map(function(c, i) {
       var index = from.indexOf(c);
        return (index !== -1) ? to.charAt(index) : c;
    }).join('');
  }
}
