checkNull = function(obj, value, message){
	if(value == "" || value == null){
		alert(message);
		obj.focus();
		return false;
	}else{
		return true;
	}
}

