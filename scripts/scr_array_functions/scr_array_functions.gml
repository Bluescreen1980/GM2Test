// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@desc returns the number of times a value appears in an array
///@arg array    array to search in
///@arg value    value to search for

function array_value_exists( array, value )
{
    var length, count
    length = array_length(array)
    count = 0
    for (var i = 0; i < length; i++)
    {
        if typeof(array[i]) == typeof(value) && array[i] == value 
                count += 1
    }
    return count
}


function search_array(array, value){

	var searchThisArray = array;
	    lookForThisValue = value;
		index_n = 0;
	var arrayHasValue = false;
	
	for (var i = 0, iLen = array_length_1d(searchThisArray); i < iLen; i++) {
	   if (searchThisArray[i] == lookForThisValue) {
	       index_n = i;
	       break;
	   }
	}

		return index_number;	
}
