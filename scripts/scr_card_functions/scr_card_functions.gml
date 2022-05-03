// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_card(crd){
	array_push(card_pack,crd);
}


function remove_card(crd){
	if (is_numeric(crd)){
			c = array_get(card_pack,crd);
			array_push(card_removal_pile,c);
			array_delete(card_pack,crd);
	}
	else if is_string(crd){
		
		card_exists = array_value_exists(card_pack, crd )
		
		if(card_exists > 0){
			n = search_array(card_pack, crd)
			c = array_get(card_pack,n);
			array_push(card_removal_pile,c);
			array_delete(card_pack,n);
		}
		else {
		global.debugtxt = "Error: card doesnt found under that name"};
		};
		
	};
 
 


function howmany_card(){

	val = array_length(card_pack);
	return val
}


function read_card(n){
	if (howmany_card >n){ 
	array_get(card_pack, n);
	}
	else if (howmany_card <= n) {
	global.debugtxt = "Error: card_pack array overflow, try smaller number."};
}


function change_card(n,crd){
	
	if (howmany_card > n) {
		array_set(card_pack,n,crd);
	}
	else if (howmany_card <= n) {
		global.debugtxt = "Error: card_pack array overflow, try smaller number."};
	
}


function read_all_cards(){
	
	str = "Cards: ";
	for (var i = 0, iLen = array_length_1d(card_pack); i < iLen; i++) {
	   global.debugtxt = array_get(card_pack,i);	   
	   str = str + global.debugtxt + " , ";
	}
	return str;	

};
