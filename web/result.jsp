<!DOCTYPE html>
<html>
<head>
	<title>Logout</title>
	<style type="text/css">
		.only1{
			margin: 20%;
			background-color: lightgreen;
			border: 2px solid black;
			text-align: center;
			border-color: yellow;
		}

		.only h1{
			margin: 5vw;
		}
	</style>
</head>
<%
    int j=0,h=0;
    j = (Integer) session.getAttribute("cktque");
    h = (Integer) session.getAttribute("maxque");
%>
<body>
<div class="only1">
<div class="only">
	<h1>You have correctly answered <%=j%> out of <%=h%>!!!...</h1>
</div>
	<a href="dashboard.jsp"><h5>Go to Dashboard</h5></a>
</div>
</body>
<script>

(function (global) { 

    if(typeof (global) === "undefined") {
        throw new Error("window is undefined");
    }

    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";

        // making sure we have the fruit available for juice (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 50);
    };

    global.onhashchange = function () {
        if (global.location.hash !== _hash) {
            global.location.hash = _hash;
        }
    };

    global.onload = function () {            
        noBackPlease();

        // disables backspace on page except on input fields and textarea..
        document.body.onkeydown = function (e) {
            var elm = e.target.nodeName.toLowerCase();
            if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                e.preventDefault();
            }
            // stopping event bubbling up the DOM tree..
            e.stopPropagation();
        };          
    }

})(window);
</script> 
</html>