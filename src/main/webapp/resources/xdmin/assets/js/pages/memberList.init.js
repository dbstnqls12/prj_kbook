var sparklineoptions1={series:[{data:[12,14,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}},sparklinechart1=new ApexCharts(document.querySelector("#mini-1"),sparklineoptions1);sparklinechart1.render();sparklineoptions1={series:[{data:[65,14,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-2"),sparklineoptions1)).render();sparklineoptions1={series:[{data:[12,75,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-3"),sparklineoptions1)).render();sparklineoptions1={series:[{data:[12,14,2,47,42,15,47,75,65,19,70]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-4"),sparklineoptions1)).render(),new gridjs.Grid({columns:[{name:"#",sort:{enabled:!1},formatter:function(a){return gridjs.html('<div class="form-check font-size-16"><input class="form-check-input" type="checkbox" id="orderidcheck01"><label class="form-check-label" for="orderidcheck01"></label></div>')}}
,{name:"No.",formatter:function(a){return gridjs.html('<span class="fw-semibold">'+a+"</span>")}}
,"이름"
,"이메일"
,"전화번호"
,"주소"
,"등록일"
,{name:"Action",sort:{enabled:!1},formatter:function(a){return gridjs.html('<div class="d-flex gap-3"><a href="/admin/memberView" data-bs-toggle="tooltip" data-bs-placement="top" title="수정" class="text-success"><i class="mdi mdi-pencil font-size-18"></i></a><a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="삭제" class="text-danger"><i class="mdi mdi-delete font-size-18"></i></a></div>')}}]
,pagination:{limit:7},sort:!0,search:!0
,data:[["","1","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]
	,["","2","김이젠","ejenit@google.com","010-1234-1234", "제주특별자치도 서귀포시 안덕면 사계북로 120","2022-04-26"]




	]}).render(document.getElementById("table-ecommerce-orders")),flatpickr("#order-date",{defaultDate:new Date,dateFormat:"d M, Y"});