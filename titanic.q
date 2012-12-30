//This file was generated from (Academic) UPPAAL 4.1.13 (rev. 5160), November 2012

/*

*/
A[] not deadlock

/*
MUST be satisfied
*/
A<> ship.SHIP_SUNKEN

/*
Ship is sunken, leaders are DEAD or CAPTAINS are saved...

MUST be satisfied
*/
A<> ship.SHIP_SUNKEN and (position1.FLOODED_POSITION_AND_CAPTAIN_SAVED or position1.DEAD) and \
(position2.FLOODED_POSITION_AND_CAPTAIN_SAVED or position2.DEAD) and (position3.FLOODED_POSITION_AND_CAPTAIN_SAVED or position3.DEAD) \
and (position4.FLOODED_POSITION_AND_CAPTAIN_SAVED or position4.DEAD)

/*
20 % of people are saved each time

PASSED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
A<> ship.SHIP_SUNKEN && peopleCountOnBoard <= (80*peopleCountAtStart)/100

/*
30 % of people are saved each time

PASSED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
A<> ship.SHIP_SUNKEN && peopleCountOnBoard <= (70*peopleCountAtStart)/100

/*
34 % of people are saved each time

PASSED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
A<> ship.SHIP_SUNKEN && peopleCountOnBoard <= (66*peopleCountAtStart)/100

/*
35 % of people are saved each time

FAILED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
A<> ship.SHIP_SUNKEN && peopleCountOnBoard <= (65*peopleCountAtStart)/100

/*
There is chance to save 98 % of people

PASSED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
E<> ship.SHIP_SUNKEN && peopleCountOnBoard <= 2 * peopleCountAtStart/100

/*
Chance to save 99 % of people

FAILED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
E<> ship.SHIP_SUNKEN && peopleCountOnBoard <= 1 * peopleCountAtStart/100

/*
It is possible to safe captain

PASSED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
E<> position1.FLOODED_POSITION_AND_CAPTAIN_SAVED or position2.FLOODED_POSITION_AND_CAPTAIN_SAVED or position3.FLOODED_POSITION_AND_CAPTAIN_SAVED or position4.FLOODED_POSITION_AND_CAPTAIN_SAVED

/*
Captain survive each time

PASSED - 1,2, 4 HAZZARD_PLAYER , 3 CAPTAIN
*/
A<> position1.FLOODED_POSITION_AND_CAPTAIN_SAVED or position2.FLOODED_POSITION_AND_CAPTAIN_SAVED or position3.FLOODED_POSITION_AND_CAPTAIN_SAVED or position4.FLOODED_POSITION_AND_CAPTAIN_SAVED
