// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_random_card(){
	c = howmany_card();
	
	if (c > 0){
	r = (irandom_range(0,c-1));
	switchcard = read_card(r);
	add_player_card(switchcard);
	remove_card(r);
	global.recentcard = string(switchcard);
	global.debugtxt = c;
	}
}

function give_one_card(r){
	c = howmany_card();
	
	if (c > 0){
	switchcard = read_card(r);
	add_player_card(switchcard);
	remove_card(r);
	global.recentcard = string(switchcard);
	global.debugtxt = c;
	}
}



function add_card(crd){
	array_push(global.card_pack,crd);
}

function add_player_card(crd){
	array_push(global.player_hand,crd);
}




function remove_card(crd){
	
	n = 0;
	c = 0;
	
	if (is_numeric(crd)){
			c = array_get(global.card_pack,crd);
			// array_push(global.card_removal_pile,c);
			array_delete(global.card_pack,crd,1);
	}
	else if is_string(crd){
		
		card_exists = array_value_exists(global.card_pack, crd)
		
		if(card_exists > 0){
			n = search_array(global.card_pack, crd)
			c = array_get(global.card_pack,n);
			//array_push(global.card_removal_pile,c);
			array_delete(global.card_pack,n,1);
		}
		else {
		global.debugtxt = "Error: card is not found under that name"};
		};
		
	};
 
 
function remove_player_card(crd){
	
	n = 0;
	c = 0;
	
	if (is_numeric(crd)){
			c = array_get(global.player_hand,crd);
			array_push(global.card_removal_pile,c);
			array_delete(global.player_hand,crd,1);
	}
	else if (is_string(crd)){
		
		card_exists = array_value_exists(global.player_hand, crd)
		
		if(card_exists > 0){
			n = search_array(global.player_hand, crd)
			c = array_get(global.player_hand,n);
			array_push(global.card_removal_pile,c);
			array_delete(global.player_hand,n,1);
		}
		else {
		global.debugtxt = "Error: player card is not found under that name"};
		};
		
	};
 

function howmany_card(){

	val = array_length(global.card_pack);
	return val
}

function howmany_player_card(){

	val = array_length(global.player_hand);
	return val
}


function read_card(n){
	 
	return array_get(global.card_pack, n);
	
}

function read_last_card(n){
	 
	n = array_length(global.card_pack)
	return array_get(global.card_pack, n-1);
	
}

function read_player_card(n){
 	
		n = array_length(global.player_hand)
	return array_get(global.player_hand, n-1);
	
}


function change_card(n,crd){
	
	if (howmany_card > n) {
		array_set(global.card_pack,n,crd);
	}
	else if (howmany_card <= n) {
		global.debugtxt = "Error: global.card_pack array overflow, try smaller number."};
	
}


function change_player_card(n,crd){
	
	if (howmany_player_card > n) {
		array_set(global.player_hand,n,crd);
	}
	else if (howmany_player_card <= n) {
		global.debugtxt = "Error: global.player_hand array overflow, try smaller number."};
	
}


function read_all_cards(){
	
	str = "Cards in pack: ";
	for (var i = 0, iLen = array_length_1d(global.card_pack); i < iLen; i++) {
	   global.debugtxt = array_get(global.card_pack,i);	   
	   str = str + global.debugtxt + " , ";
	}
	return str;	

};

function read_all_player_cards(){
	
	str = "Player hand: ";
	iLen = array_length_1d(global.player_hand)
	temptext = "";
	if (iLen > 0)
		for (var i = 0, iLen = array_length_1d(global.player_hand); i < iLen; i++) {
		   temptext = array_get(global.player_hand,i);	   
		   str = str + temptext + " , ";
		}
	return str;	

};

function read_all_graveyard_cards(){
	
	str = "Graveyard cards: ";
	for (var i = 0, iLen = array_length_1d(global.card_removal_pile); i < iLen; i++) {
	   global.debugtxt = array_get(global.card_removal_pile,i);	   
	   str = str + global.debugtxt + " , ";
	}
	return str;	

};
