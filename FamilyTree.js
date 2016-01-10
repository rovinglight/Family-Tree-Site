function add(){
	var div=document.createElement("div");
	var input=document.createElement("input");
	var gener=document.createElement("input");
	var div2=document.createElement("div");
	gener.className="form-control";
	gener.type="text";
	gener.name="generation"+count;
	gener.placeholder="1";
	input.className="form-control";
	input.type="text";
	input.name="name"+count;
	input.placeholder="张三";
	div.className="form-group"
	div2.className="form-group"
	div.appendChild(input);
	div2.appendChild(gener);
	
	document.getElementById("myList").appendChild(div);
	
	document.getElementById("myList").appendChild(div2);
	count++;
	document.getElementById("ad").value=count-1;
}
function dele(ii){
	var deleTab = document.getElementById("dele"+ii);
	var de = document.getElementById("de");
		deleTab.innerHTML="<span id='dele"+ii+"'><span class='glyphicon glyphicon-ok-sign'></span>已删除</span>";
	de.value+=ii+",";

}
