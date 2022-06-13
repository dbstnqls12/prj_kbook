<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->


</head>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script type="text/javascript">

	let friend = '동무';
	let olderBrother1 = '형';
	let olderSister1 = '누나';
	let olderBrother2 = '오빠';
	let olderSister2 = '언니';
	let youngerSister = '여동생';
	let youngerBrother = '남동생';

	let result1 = callYou(50, 'male', 25, 'female');
	let result2 = callYou(21, 'female', 21, 'female');
	let result3 = callYou(25, 'female', 32, 'male');
	let result4 = callYou(45, 'female', 25, 'female');
	let result5 = callYou(52, 'female', 25, 'male');
	let result6 = callYou(35, 'male', 25, 'male');

	function callYou(
		if (myAge == yourAge) {
			return friend;
		} else if (myAge > yourAge) {
				if (myGender == 'male') {
		    		if(yourGender == 'female'){
		    			return youngerSister;
		    		}else{
		    			return youngerBrother;
		    		}
				}
		} else if (myAge < yourAge) {
	    		if (myGender == 'male') {
		    		if(yourGender == 'female'){
		    			return olderSister1;
		    		}else{
		    			return olderBrother1;
		    		}	
	    		}else if(myGender == 'female') {
		    		if(yourGender == 'female'){
		    			return olderSister2;
		    		}else{
		    			return olderBrother2;
		    		}		
		 		} 
		}
	}
	
	console.log(result1);
	console.log(result2);
	console.log(result3);
	console.log(result4);
	console.log(result5);
	console.log(result6);
</script>
</body>
</html>