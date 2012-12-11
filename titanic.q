//This file was generated from (Academic) UPPAAL 4.1.13 (rev. 5160), November 2012

/*
The system is deadlock-free.
*/
A[] not deadlock

/*

*/
A<> ship.SHIP_SUNKEN

/*

*/
E<> ship.SHIP_SUNKEN && peopleCountAtStart - peopleCountOnBoard <= 3*peopleCountAtStart/4
