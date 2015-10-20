/**
 * INSERT LICENCE INFORMATION HERE 
 */ 

/**
 * @author Corentin MARCIAU	<corentin@marciau.fr>
 */

/**
 * @file %f
 */

#include "***.hpp"

#include <iostream>

basics::ma_classe::ma_classe(int param1, int param2) :
   param1_(param1), param2_(param2)
{
   std::cout << "Passage dans le constructeur de ma_classe !\n";
}

int basics::ma_classe::ma_methode(int param3, int param4) 
{
   std::cout << "param3 et param4 : " << param3 << " " << param4 << "\n";
   return 42;
}
