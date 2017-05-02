$(function(){
	//全选
	var checkall=document.getElementsByName("check_all")[0];
	var singlecheck=document.getElementsByName("email_num");
	function puanduan_qx(){
		var str=0;
		for(var i=0;i<singlecheck.length;i++)
		{
			if(!singlecheck[i].checked)
			{
				str=parseInt(str)+1;
			}
		}
		if(str>0)
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	//单击全选
	$("input[name='check_all']").change(function(){
		//console.log(this.checked);
		if(this.checked)
		{
			for(var i=0;i<singlecheck.length;i++)
			{
				singlecheck[i].checked=true;
			}
		}
		else
		{
			for(var i=0;i<singlecheck.length;i++)
			{
				singlecheck[i].checked=false;
			}
		}
	});
	for(var i=0;i<singlecheck.length;i++)
	{
		singlecheck[i].onclick=function(){
			//console.log(this.checked);
			checkall.checked=puanduan_qx();
		};
	}
})
