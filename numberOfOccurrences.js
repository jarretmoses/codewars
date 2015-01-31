Array.prototype.numberOfOccurrences = function(numToCheck) {
  return this.filter(function(num){ return num === numToCheck }).length;
}