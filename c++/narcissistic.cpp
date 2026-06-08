#include <iostream>
#include <vector>
#include <cmath>

bool narcissistic(int value){
    
 int a = value;
 std::vector<int> array;
  
  while (a > 0) {
     int resto = a % 10;
     array.push_back(resto);
     a /= 10
   }
      
    int expoente = array.size();
    int soma = 0;
    
  for (int i=0; i < array.size(); i++) {
     soma += std::pow(array[i], expoente); 
  }
  
  if (soma == value) {
    return true;
  }
  else {
     return false;
  }
}