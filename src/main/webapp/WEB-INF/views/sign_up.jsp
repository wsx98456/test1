<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="yellowghost">
<meta name="author" content="">

<title>Yellow_Ghost</title>

<!-- Bootstrap Core CSS -->

<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Custom CSS -->

<link
	href="<%=request.getContextPath()%>/resources/css/shop-homepage.css"
	rel="stylesheet" />



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<%@include file="navbar.jspf"%>
	<div class="container">
	<form method="post" action="sign_up" id="signupForm">
	<div class="row">
<div class="form-group col-sm-4 col-xs-6 col-md-4 col-lg-4">
<label>Set Your Name:</label>
<div>
  <input type="text" class="form-control" name="acc">
</div></div>
</div>
<br></br>
<div class="row">
  
<div class="form-group col-sm-4 col-xs-6 col-md-4 col-lg-4" >
<label>Set Your Password:</label>
 
  <input type="password" class="form-control" name="pass">

</div>
</div>
<br></br>

<div class="row">
<label>縣市：</label>
<div class="form-group">

<div class="col-sm-4 col-xs-4 col-md-4 col-lg-4">
<select name="CityNo" class="form-control" id="CityNo">
<option value="">請選擇</option>
<option value="0" o="台北市" >台北市</option>
<option value="1" o="基隆市" >基隆市</option>
<option value="2" o="台北縣" >新北市</option>
<option value="3" o="宜蘭縣" >宜蘭縣</option>
<option value="4" o="新竹市" >新竹市</option>
<option value="5" o="新竹縣" >新竹縣</option>
<option value="6" o="桃園縣" >桃園縣</option>
<option value="7" o="苗栗縣" >苗栗縣</option>
<option value="8" o="台中縣" >台中市</option>
<option value="9" o="彰化縣" >彰化縣</option>
<option value="10" o="南投縣" >南投縣</option>
<option value="11" o="嘉義市" >嘉義市</option>
<option value="12" o="嘉義縣" >嘉義縣</option>
<option value="13" o="雲林縣" >雲林縣</option>
<option value="14" o="台南縣" >台南市</option>
<option value="15" o="高雄縣" >高雄市</option>
<option value="16" o="澎湖縣" >澎湖縣</option>
<option value="17" o="屏東縣" >屏東縣</option>
<option value="18" o="台東縣" >台東縣</option>
<option value="19" o="花蓮縣" >花蓮縣</option>
<option value="20" o="金門縣" >金門縣</option>
<option value="21" o="連江縣" >連江縣</option>
</select>
</div>
<div class="col-sm-4 col-xs-4 col-md-4 col-lg-4">
<select name="AreaNo" class="form-control" id="AreaNo">
<option value="1" c="0" z="100" o="中正區" >中正區</option>
<option value="2" c="0" z="103" o="大同區" >大同區</option>
<option value="3" c="0" z="104" o="中山區" >中山區</option>
<option value="4" c="0" z="105" o="松山區" >松山區</option>
<option value="5" c="0" z="106" o="大安區" >大安區</option>
<option value="6" c="0" z="108" o="萬華區" >萬華區</option>
<option value="7" c="0" z="110" o="信義區" >信義區</option>
<option value="8" c="0" z="111" o="士林區" >士林區</option>
<option value="9" c="0" z="112" o="北投區" >北投區</option>
<option value="10" c="0" z="114" o="內湖區" >內湖區</option>
<option value="11" c="0" z="115" o="南港區" >南港區</option>
<option value="12" c="0" z="116" o="文山區" >文山區</option>
<option value="13" c="1" z="200" o="仁愛區" >仁愛區</option>
<option value="14" c="1" z="201" o="信義區" >信義區</option>
<option value="15" c="1" z="202" o="中正區" >中正區</option>
<option value="16" c="1" z="203" o="中山區" >中山區</option>
<option value="17" c="1" z="204" o="安樂區" >安樂區</option>
<option value="18" c="1" z="205" o="暖暖區" >暖暖區</option>
<option value="19" c="1" z="206" o="七堵區" >七堵區</option>
<option value="20" c="2" z="207" o="萬里鄉" >萬里區</option>
<option value="21" c="2" z="208" o="金山鄉" >金山區</option>
<option value="22" c="2" z="220" o="板橋市" >板橋區</option>
<option value="23" c="2" z="221" o="汐止市" >汐止區</option>
<option value="24" c="2" z="222" o="深坑鄉" >深坑區</option>
<option value="25" c="2" z="223" o="石碇鄉" >石碇區</option>
<option value="26" c="2" z="224" o="瑞芳鎮" >瑞芳區</option>
<option value="27" c="2" z="226" o="平溪鄉" >平溪區</option>
<option value="28" c="2" z="227" o="雙溪鄉" >雙溪區</option>
<option value="29" c="2" z="228" o="貢寮鄉" >貢寮區</option>
<option value="30" c="2" z="231" o="新店市" >新店區</option>
<option value="31" c="2" z="232" o="坪林鄉" >坪林區</option>
<option value="32" c="2" z="233" o="烏來鄉" >烏來區</option>
<option value="33" c="2" z="234" o="永和市" >永和區</option>
<option value="34" c="2" z="235" o="中和市" >中和區</option>
<option value="35" c="2" z="236" o="土城市" >土城區</option>
<option value="36" c="2" z="237" o="三峽鎮" >三峽區</option>
<option value="37" c="2" z="238" o="樹林市" >樹林區</option>
<option value="38" c="2" z="239" o="鶯歌鎮" >鶯歌區</option>
<option value="39" c="2" z="241" o="三重市" >三重區</option>
<option value="40" c="2" z="242" o="新莊市" >新莊區</option>
<option value="41" c="2" z="243" o="泰山鄉" >泰山區</option>
<option value="42" c="2" z="244" o="林口鄉" >林口區</option>
<option value="43" c="2" z="247" o="蘆洲市" >蘆洲區</option>
<option value="44" c="2" z="248" o="五股鄉" >五股區</option>
<option value="45" c="2" z="249" o="八里鄉" >八里區</option>
<option value="46" c="2" z="251" o="淡水鎮" >淡水區</option>
<option value="47" c="2" z="252" o="三芝鄉" >三芝區</option>
<option value="48" c="2" z="253" o="石門鄉" >石門區</option>
<option value="49" c="3" z="260" o="宜蘭市" >宜蘭市</option>
<option value="50" c="3" z="261" o="頭城鎮" >頭城鎮</option>
<option value="51" c="3" z="262" o="礁溪鄉" >礁溪鄉</option>
<option value="52" c="3" z="263" o="壯圍鄉" >壯圍鄉</option>
<option value="53" c="3" z="264" o="員山鄉" >員山鄉</option>
<option value="54" c="3" z="265" o="羅東鎮" >羅東鎮</option>
<option value="55" c="3" z="266" o="三星鄉" >三星鄉</option>
<option value="56" c="3" z="267" o="大同鄉" >大同鄉</option>
<option value="57" c="3" z="268" o="五結鄉" >五結鄉</option>
<option value="58" c="3" z="269" o="冬山鄉" >冬山鄉</option>
<option value="59" c="3" z="270" o="蘇澳鎮" >蘇澳鎮</option>
<option value="60" c="3" z="272" o="南澳鄉" >南澳鄉</option>
<option value="61" c="4" z="300" o="全區" >全區</option>
<option value="62" c="5" z="302" o="竹北市" >竹北市</option>
<option value="63" c="5" z="303" o="湖口鄉" >湖口鄉</option>
<option value="64" c="5" z="304" o="新豐鄉" >新豐鄉</option>
<option value="65" c="5" z="305" o="新埔鄉" >新埔鄉</option>
<option value="66" c="5" z="306" o="關西鎮" >關西鎮</option>
<option value="67" c="5" z="307" o="芎林鄉" >芎林鄉</option>
<option value="68" c="5" z="308" o="寶山鄉" >寶山鄉</option>
<option value="69" c="5" z="310" o="竹東鎮" >竹東鎮</option>
<option value="70" c="5" z="311" o="五峰鄉" >五峰鄉</option>
<option value="71" c="5" z="312" o="橫山鄉" >橫山鄉</option>
<option value="72" c="5" z="313" o="尖石鄉" >尖石鄉</option>
<option value="73" c="5" z="314" o="北埔鄉" >北埔鄉</option>
<option value="74" c="5" z="315" o="峨嵋鄉" >峨嵋鄉</option>
<option value="75" c="6" z="320" o="中壢市" >中壢市</option>
<option value="76" c="6" z="324" o="平鎮市" >平鎮市</option>
<option value="77" c="6" z="325" o="龍潭鄉" >龍潭鄉</option>
<option value="78" c="6" z="326" o="楊梅鎮" >楊梅鎮</option>
<option value="79" c="6" z="327" o="新屋鄉" >新屋鄉</option>
<option value="80" c="6" z="328" o="觀音鄉" >觀音鄉</option>
<option value="81" c="6" z="330" o="桃園市" >桃園市</option>
<option value="82" c="6" z="333" o="龜山鄉" >龜山鄉</option>
<option value="83" c="6" z="334" o="八德市" >八德市</option>
<option value="84" c="6" z="335" o="大溪鎮" >大溪鎮</option>
<option value="85" c="6" z="336" o="復興鄉" >復興鄉</option>
<option value="86" c="6" z="337" o="大園鄉" >大園鄉</option>
<option value="87" c="6" z="338" o="蘆竹鄉" >蘆竹鄉</option>
<option value="88" c="7" z="350" o="竹南鎮" >竹南鎮</option>
<option value="89" c="7" z="351" o="頭份鎮" >頭份鎮</option>
<option value="90" c="7" z="352" o="三灣鄉" >三灣鄉</option>
<option value="91" c="7" z="353" o="南庄鄉" >南庄鄉</option>
<option value="92" c="7" z="354" o="獅潭鄉" >獅潭鄉</option>
<option value="93" c="7" z="356" o="後龍鎮" >後龍鎮</option>
<option value="94" c="7" z="357" o="通霄鎮" >通霄鎮</option>
<option value="95" c="7" z="358" o="苑裡鎮" >苑裡鎮</option>
<option value="96" c="7" z="360" o="苗栗市" >苗栗市</option>
<option value="97" c="7" z="361" o="造橋鄉" >造橋鄉</option>
<option value="98" c="7" z="362" o="頭屋鄉" >頭屋鄉</option>
<option value="99" c="7" z="363" o="公館鄉" >公館鄉</option>
<option value="100" c="7" z="364" o="大湖鄉" >大湖鄉</option>
<option value="101" c="7" z="365" o="泰安鄉" >泰安鄉</option>
<option value="102" c="7" z="366" o="鉰鑼鄉" >鉰鑼鄉</option>
<option value="103" c="7" z="367" o="三義鄉" >三義鄉</option>
<option value="104" c="7" z="368" o="西湖鄉" >西湖鄉</option>
<option value="105" c="7" z="369" o="卓蘭鄉" >卓蘭鄉</option>
<option value="106" c="8" z="400" o="中區" >中區</option>
<option value="107" c="8" z="401" o="東區" >東區</option>
<option value="108" c="8" z="402" o="南區" >南區</option>
<option value="109" c="8" z="403" o="西區" >西區</option>
<option value="110" c="8" z="404" o="北區" >北區</option>
<option value="111" c="8" z="406" o="北屯區" >北屯區</option>
<option value="112" c="8" z="407" o="西屯區" >西屯區</option>
<option value="113" c="8" z="408" o="南屯區" >南屯區</option>
<option value="114" c="8" z="411" o="太平市" >太平區</option>
<option value="115" c="8" z="412" o="大里市" >大里區</option>
<option value="116" c="8" z="413" o="霧峰鄉" >霧峰區</option>
<option value="117" c="8" z="414" o="烏日鄉" >烏日區</option>
<option value="118" c="8" z="420" o="豐原市" >豐原區</option>
<option value="119" c="8" z="421" o="后里鄉" >后里區</option>
<option value="120" c="8" z="422" o="石岡鄉" >石岡區</option>
<option value="121" c="8" z="423" o="東勢鎮" >東勢區</option>
<option value="122" c="8" z="424" o="和平鄉" >和平區</option>
<option value="123" c="8" z="426" o="新社鄉" >新社區</option>
<option value="124" c="8" z="427" o="潭子鄉" >潭子區</option>
<option value="125" c="8" z="428" o="大雅鄉" >大雅區</option>
<option value="126" c="8" z="429" o="神岡鄉" >神岡區</option>
<option value="127" c="8" z="432" o="大肚鄉" >大肚區</option>
<option value="128" c="8" z="433" o="沙鹿鎮" >沙鹿區</option>
<option value="129" c="8" z="434" o="龍井鄉" >龍井區</option>
<option value="130" c="8" z="435" o="梧棲鎮" >梧棲區</option>
<option value="131" c="8" z="436" o="清水鎮" >清水區</option>
<option value="132" c="8" z="437" o="大甲鎮" >大甲區</option>
<option value="133" c="8" z="438" o="外埔鄉" >外埔區</option>
<option value="134" c="8" z="439" o="大安鄉" >大安區</option>
<option value="135" c="9" z="500" o="彰化市" >彰化市</option>
<option value="136" c="9" z="502" o="芬園鄉" >芬園鄉</option>
<option value="137" c="9" z="503" o="花壇鄉" >花壇鄉</option>
<option value="138" c="9" z="504" o="秀水鄉" >秀水鄉</option>
<option value="139" c="9" z="505" o="鹿港鎮" >鹿港鎮</option>
<option value="140" c="9" z="506" o="福興鄉" >福興鄉</option>
<option value="141" c="9" z="507" o="線西鄉" >線西鄉</option>
<option value="142" c="9" z="508" o="和美鎮" >和美鎮</option>
<option value="143" c="9" z="509" o="伸港鄉" >伸港鄉</option>
<option value="144" c="9" z="510" o="員林鎮" >員林鎮</option>
<option value="145" c="9" z="511" o="社頭鄉" >社頭鄉</option>
<option value="146" c="9" z="5112" o="永靖鄉" >永靖鄉</option>
<option value="147" c="9" z="513" o="埔心鄉" >埔心鄉</option>
<option value="148" c="9" z="514" o="溪湖鎮" >溪湖鎮</option>
<option value="149" c="9" z="515" o="大村鄉" >大村鄉</option>
<option value="150" c="9" z="516" o="埔鹽鄉" >埔鹽鄉</option>
<option value="151" c="9" z="520" o="田中鎮" >田中鎮</option>
<option value="152" c="9" z="521" o="北斗鎮" >北斗鎮</option>
<option value="153" c="9" z="522" o="田尾鄉" >田尾鄉</option>
<option value="154" c="9" z="523" o="埤頭鄉" >埤頭鄉</option>
<option value="155" c="9" z="524" o="溪州鄉" >溪州鄉</option>
<option value="156" c="9" z="525" o="竹塘鄉" >竹塘鄉</option>
<option value="157" c="9" z="526" o="二林鎮" >二林鎮</option>
<option value="158" c="9" z="527" o="大城鄉" >大城鄉</option>
<option value="159" c="9" z="528" o="芳苑鄉" >芳苑鄉</option>
<option value="160" c="9" z="530" o="二水鄉" >二水鄉</option>
<option value="161" c="10" z="540" o="南投市" >南投市</option>
<option value="162" c="10" z="541" o="中寮鄉" >中寮鄉</option>
<option value="163" c="10" z="542" o="草屯鎮" >草屯鎮</option>
<option value="164" c="10" z="544" o="國姓鄉" >國姓鄉</option>
<option value="165" c="10" z="545" o="埔里鎮" >埔里鎮</option>
<option value="166" c="10" z="546" o="仁愛鄉" >仁愛鄉</option>
<option value="167" c="10" z="551" o="名間鄉" >名間鄉</option>
<option value="168" c="10" z="552" o="集集鄉" >集集鄉</option>
<option value="169" c="10" z="553" o="水里鄉" >水里鄉</option>
<option value="170" c="10" z="555" o="魚池鄉" >魚池鄉</option>
<option value="171" c="10" z="556" o="信義鄉" >信義鄉</option>
<option value="172" c="10" z="557" o="竹山鎮" >竹山鎮</option>
<option value="173" c="10" z="558" o="鹿谷鄉" >鹿谷鄉</option>
<option value="174" c="11" z="600" o="全區" >全區</option>
<option value="175" c="12" z="602" o="番路鄉" >番路鄉</option>
<option value="176" c="12" z="603" o="梅山鄉" >梅山鄉</option>
<option value="177" c="12" z="604" o="竹崎鄉" >竹崎鄉</option>
<option value="178" c="12" z="605" o="阿里山" >阿里山</option>
<option value="179" c="12" z="606" o="中埔鄉" >中埔鄉</option>
<option value="180" c="12" z="607" o="大埔鄉" >大埔鄉</option>
<option value="181" c="12" z="608" o="水上鄉" >水上鄉</option>
<option value="182" c="12" z="611" o="鹿草鄉" >鹿草鄉</option>
<option value="183" c="12" z="612" o="太保市" >太保市</option>
<option value="184" c="12" z="613" o="朴子市" >朴子市</option>
<option value="185" c="12" z="614" o="東石鄉" >東石鄉</option>
<option value="186" c="12" z="615" o="六腳鄉" >六腳鄉</option>
<option value="187" c="12" z="616" o="新港鄉" >新港鄉</option>
<option value="188" c="12" z="621" o="民雄鄉" >民雄鄉</option>
<option value="189" c="12" z="622" o="大林鎮" >大林鎮</option>
<option value="190" c="12" z="623" o="漢口鄉" >漢口鄉</option>
<option value="191" c="12" z="624" o="義竹鄉" >義竹鄉</option>
<option value="192" c="12" z="625" o="布袋鎮" >布袋鎮</option>
<option value="193" c="13" z="630" o="斗南市" >斗南市</option>
<option value="194" c="13" z="631" o="大埤鄉" >大埤鄉</option>
<option value="195" c="13" z="632" o="虎尾鎮" >虎尾鎮</option>
<option value="196" c="13" z="633" o="土庫鎮" >土庫鎮</option>
<option value="197" c="13" z="634" o="褒忠鄉" >褒忠鄉</option>
<option value="198" c="13" z="635" o="東勢鄉" >東勢鄉</option>
<option value="199" c="13" z="636" o="台西鄉" >台西鄉</option>
<option value="200" c="13" z="637" o="崙背鄉" >崙背鄉</option>
<option value="201" c="13" z="638" o="麥寮鄉" >麥寮鄉</option>
<option value="202" c="13" z="640" o="斗六市" >斗六市</option>
<option value="203" c="13" z="643" o="林內鄉" >林內鄉</option>
<option value="204" c="13" z="646" o="古坑鄉" >古坑鄉</option>
<option value="205" c="13" z="647" o="莿桐鄉" >莿桐鄉</option>
<option value="206" c="13" z="648" o="西螺鎮" >西螺鎮</option>
<option value="207" c="13" z="649" o="二崙鄉" >二崙鄉</option>
<option value="208" c="13" z="651" o="北港鎮" >北港鎮</option>
<option value="209" c="13" z="652" o="水林鄉" >水林鄉</option>
<option value="210" c="13" z="653" o="口湖鄉" >口湖鄉</option>
<option value="211" c="13" z="654" o="四湖鄉" >四湖鄉</option>
<option value="212" c="13" z="655" o="元長鄉" >元長鄉</option>
<option value="213" c="14" z="700" o="中區" >中區</option>
<option value="214" c="14" z="701" o="東區" >東區</option>
<option value="215" c="14" z="702" o="南區" >南區</option>
<option value="216" c="14" z="703" o="西區" >西區</option>
<option value="217" c="14" z="704" o="北區" >北區</option>
<option value="218" c="14" z="708" o="安平區" >安平區</option>
<option value="219" c="14" z="709" o="安南區" >安南區</option>
<option value="220" c="14" z="710" o="永康市" >永康區</option>
<option value="221" c="14" z="711" o="歸仁鄉" >歸仁區</option>
<option value="222" c="14" z="712" o="新化鎮" >新化區</option>
<option value="223" c="14" z="713" o="左鎮鄉" >左鎮區</option>
<option value="224" c="14" z="714" o="玉井鄉" >玉井區</option>
<option value="225" c="14" z="715" o="楠西鄉" >楠西區</option>
<option value="226" c="14" z="716" o="南化鄉" >南化區</option>
<option value="227" c="14" z="717" o="仁德鄉" >仁德區</option>
<option value="228" c="14" z="718" o="關廟鄉" >關廟區</option>
<option value="229" c="14" z="719" o="龍崎鄉" >龍崎區</option>
<option value="230" c="14" z="720" o="官田鄉" >官田區</option>
<option value="231" c="14" z="721" o="麻豆鎮" >麻豆區</option>
<option value="232" c="14" z="722" o="佳里鎮" >佳里區</option>
<option value="233" c="14" z="723" o="西港鄉" >西港區</option>
<option value="234" c="14" z="724" o="七股鄉" >七股區</option>
<option value="235" c="14" z="725" o="將軍鄉" >將軍區</option>
<option value="236" c="14" z="726" o="學甲鎮" >學甲區</option>
<option value="237" c="14" z="727" o="北門鄉" >北門區</option>
<option value="238" c="14" z="730" o="新營市" >新營區</option>
<option value="239" c="14" z="731" o="後壁鄉" >後壁區</option>
<option value="240" c="14" z="732" o="白河鎮" >白河區</option>
<option value="241" c="14" z="733" o="東山鄉" >東山區</option>
<option value="242" c="14" z="734" o="六甲鄉" >六甲區</option>
<option value="243" c="14" z="735" o="下營鄉" >下營區</option>
<option value="244" c="14" z="736" o="柳營鄉" >柳營區</option>
<option value="245" c="14" z="737" o="鹽水鎮" >鹽水區</option>
<option value="246" c="14" z="741" o="善化鎮" >善化區</option>
<option value="247" c="14" z="742" o="大內鄉" >大內區</option>
<option value="248" c="14" z="743" o="山上鄉" >山上區</option>
<option value="249" c="14" z="744" o="新市鄉" >新市區</option>
<option value="250" c="14" z="745" o="安定鄉" >安定區</option>
<option value="251" c="15" z="800" o="新興區" >新興區</option>
<option value="252" c="15" z="801" o="前金區" >前金區</option>
<option value="253" c="15" z="802" o="苓雅區" >苓雅區</option>
<option value="254" c="15" z="803" o="鹽埕區" >鹽埕區</option>
<option value="255" c="15" z="804" o="鼓山區" >鼓山區</option>
<option value="256" c="15" z="805" o="旗津區" >旗津區</option>
<option value="257" c="15" z="806" o="前鎮區" >前鎮區</option>
<option value="258" c="15" z="807" o="三民區" >三民區</option>
<option value="259" c="15" z="811" o="楠梓區" >楠梓區</option>
<option value="260" c="15" z="812" o="小港區" >小港區</option>
<option value="261" c="15" z="813" o="左營區" >左營區</option>
<option value="262" c="15" z="814" o="仁武鄉" >仁武區</option>
<option value="263" c="15" z="815" o="大社鄉" >大社區</option>
<option value="264" c="15" z="820" o="岡山鎮" >岡山區</option>
<option value="265" c="15" z="821" o="路竹鄉" >路竹區</option>
<option value="266" c="15" z="822" o="阿蓮鄉" >阿蓮區</option>
<option value="267" c="15" z="823" o="田寮鄉" >田寮區</option>
<option value="268" c="15" z="824" o="燕巢鄉" >燕巢區</option>
<option value="269" c="15" z="825" o="橋頭鄉" >橋頭區</option>
<option value="270" c="15" z="826" o="梓官鄉" >梓官區</option>
<option value="271" c="15" z="827" o="彌陀鄉" >彌陀區</option>
<option value="272" c="15" z="828" o="永安鄉" >永安區</option>
<option value="273" c="15" z="829" o="湖內鄉" >湖內區</option>
<option value="274" c="15" z="830" o="鳳山市" >鳳山區</option>
<option value="275" c="15" z="831" o="大寮鄉" >大寮區</option>
<option value="276" c="15" z="832" o="林園鄉" >林園區</option>
<option value="277" c="15" z="833" o="鳥松鄉" >鳥松區</option>
<option value="278" c="15" z="840" o="大樹鄉" >大樹區</option>
<option value="279" c="15" z="842" o="旗山鎮" >旗山區</option>
<option value="280" c="15" z="843" o="美濃鎮" >美濃區</option>
<option value="281" c="15" z="844" o="六龜鄉" >六龜區</option>
<option value="282" c="15" z="845" o="內門鄉" >內門區</option>
<option value="283" c="15" z="846" o="杉林鄉" >杉林區</option>
<option value="284" c="15" z="847" o="甲仙鄉" >甲仙區</option>
<option value="285" c="15" z="848" o="桃源鄉" >桃源區</option>
<option value="286" c="15" z="849" o="三民鄉" >三民區</option>
<option value="287" c="15" z="851" o="茂林鄉" >茂林區</option>
<option value="288" c="15" z="852" o="茄萣鄉" >茄萣區</option>
<option value="289" c="16" z="880" o="馬公市" >馬公市</option>
<option value="290" c="16" z="881" o="西嶼鄉" >西嶼鄉</option>
<option value="291" c="16" z="882" o="望安鄉" >望安鄉</option>
<option value="292" c="16" z="883" o="七美鄉" >七美鄉</option>
<option value="293" c="16" z="884" o="白沙鄉" >白沙鄉</option>
<option value="294" c="16" z="885" o="湖西鄉" >湖西鄉</option>
<option value="295" c="17" z="900" o="屏東市" >屏東市</option>
<option value="296" c="17" z="901" o="三地門" >三地門</option>
<option value="297" c="17" z="902" o="霧台鄉" >霧台鄉</option>
<option value="298" c="17" z="903" o="瑪家鄉" >瑪家鄉</option>
<option value="299" c="17" z="904" o="九如鄉" >九如鄉</option>
<option value="300" c="17" z="905" o="里港鄉" >里港鄉</option>
<option value="301" c="17" z="906" o="高樹鄉" >高樹鄉</option>
<option value="302" c="17" z="907" o="鹽埔鄉" >鹽埔鄉</option>
<option value="303" c="17" z="908" o="長治鄉" >長治鄉</option>
<option value="304" c="17" z="909" o="麟洛鄉" >麟洛鄉</option>
<option value="305" c="17" z="911" o="竹田鄉" >竹田鄉</option>
<option value="306" c="17" z="912" o="內埔鄉" >內埔鄉</option>
<option value="307" c="17" z="913" o="萬丹鄉" >萬丹鄉</option>
<option value="308" c="17" z="920" o="潮州鎮" >潮州鎮</option>
<option value="309" c="17" z="921" o="泰武鄉" >泰武鄉</option>
<option value="310" c="17" z="922" o="來義鄉" >來義鄉</option>
<option value="311" c="17" z="923" o="萬巒鄉" >萬巒鄉</option>
<option value="312" c="17" z="924" o="嵌頂鄉" >嵌頂鄉</option>
<option value="313" c="17" z="925" o="新埤鄉" >新埤鄉</option>
<option value="314" c="17" z="926" o="南州鄉" >南州鄉</option>
<option value="315" c="17" z="927" o="林邊鄉" >林邊鄉</option>
<option value="316" c="17" z="928" o="東港鎮" >東港鎮</option>
<option value="317" c="17" z="929" o="琉球鄉" >琉球鄉</option>
<option value="318" c="17" z="931" o="佳冬鄉" >佳冬鄉</option>
<option value="319" c="17" z="932" o="新園鄉" >新園鄉</option>
<option value="320" c="17" z="940" o="枋寮鄉" >枋寮鄉</option>
<option value="321" c="17" z="941" o="枋山鄉" >枋山鄉</option>
<option value="322" c="17" z="942" o="春日鄉" >春日鄉</option>
<option value="323" c="17" z="943" o="獅子鄉" >獅子鄉</option>
<option value="324" c="17" z="944" o="車城鄉" >車城鄉</option>
<option value="325" c="17" z="945" o="牡丹鄉" >牡丹鄉</option>
<option value="326" c="17" z="946" o="恆春鎮" >恆春鎮</option>
<option value="327" c="17" z="947" o="滿州鄉" >滿州鄉</option>
<option value="328" c="18" z="950" o="台東市" >台東市</option>
<option value="329" c="18" z="951" o="綠島鄉" >綠島鄉</option>
<option value="330" c="18" z="952" o="蘭嶼鄉" >蘭嶼鄉</option>
<option value="331" c="18" z="953" o="延平鄉" >延平鄉</option>
<option value="332" c="18" z="954" o="卑南鄉" >卑南鄉</option>
<option value="333" c="18" z="955" o="鹿野鄉" >鹿野鄉</option>
<option value="334" c="18" z="956" o="關山鎮" >關山鎮</option>
<option value="335" c="18" z="957" o="海端鄉" >海端鄉</option>
<option value="336" c="18" z="958" o="池上鄉" >池上鄉</option>
<option value="337" c="18" z="959" o="東河鄉" >東河鄉</option>
<option value="338" c="18" z="961" o="成氐燡" >成氐燡</option>
<option value="339" c="18" z="962" o="長濱鄉" >長濱鄉</option>
<option value="340" c="18" z="963" o="太麻里" >太麻里</option>
<option value="341" c="18" z="964" o="金峰鄉" >金峰鄉</option>
<option value="342" c="18" z="965" o="大武鄉" >大武鄉</option>
<option value="343" c="18" z="966" o="達仁鄉" >達仁鄉</option>
<option value="344" c="19" z="970" o="花蓮市" >花蓮市</option>
<option value="345" c="19" z="971" o="新城鄉" >新城鄉</option>
<option value="346" c="19" z="972" o="秀林鄉" >秀林鄉</option>
<option value="347" c="19" z="973" o="吉安鄉" >吉安鄉</option>
<option value="348" c="19" z="974" o="壽豐鄉" >壽豐鄉</option>
<option value="349" c="19" z="975" o="鳳林鎮" >鳳林鎮</option>
<option value="350" c="19" z="976" o="光復鄉" >光復鄉</option>
<option value="351" c="19" z="977" o="豐濱鄉" >豐濱鄉</option>
<option value="352" c="19" z="978" o="瑞穗鄉" >瑞穗鄉</option>
<option value="353" c="19" z="979" o="萬榮鄉" >萬榮鄉</option>
<option value="354" c="19" z="981" o="玉里鎮" >玉里鎮</option>
<option value="355" c="19" z="982" o="卓溪鄉" >卓溪鄉</option>
<option value="356" c="19" z="983" o="富里鄉" >富里鄉</option>
<option value="357" c="20" z="890" o="金沙鎮" >金沙鎮</option>
<option value="358" c="20" z="891" o="金湖鎮" >金湖鎮</option>
<option value="359" c="20" z="892" o="金寧鄉" >金寧鄉</option>
<option value="360" c="20" z="893" o="金城鎮" >金城鎮</option>
<option value="361" c="20" z="894" o="烈嶼鄉" >烈嶼鄉</option>
<option value="362" c="20" z="896" o="烏坵鄉" >烏坵鄉</option>
<option value="363" c="21" z="209" o="南竿鄉" >南竿鄉</option>
<option value="364" c="21" z="210" o="北竿鄉" >北竿鄉</option>
<option value="365" c="21" z="211" o="莒光鄉" >莒光鄉</option>
<option value="366" c="21" z="212" o="東引" >東引</option>
</select>
</div>
</div>
</div>
<br></br>

地址：<input name="Add" type="text" id="Address" class="form-control" value="" />
<br></br>
	<button type="submit" class="btn btn-info">送出</button>
	</form>
	</div>
	
	
	
	
	
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script>
var nDefCity = "<?=$row->CityNo?>";
var nDefArea = "<?=$row->AreaNo?>";

function setCityArea() {
$("#AreaNo option").remove();
$("#AreaNo").append("<option value=''>請選擇</option>").append($("#jAllArea option[c="+$("#CityNo").val()+"]").clone());
if ($("#CityNo").val() == nDefCity && nDefCity !== "") $("#AreaNo option[value='"+nDefArea+"']").attr("selected",true);
}



$(function() {
aRoads = Array("路","街","大道","村","巷");
aStrNums = Array("","一","二","三","四","五","六","七","八","九");
aStrNums2 = Array("","１","２","３","４","５","６","７","８","９");

//複製新Area並隱藏
$("#AreaNo").after('<select name="jAllArea" id="jAllArea"></select>');
$("#jAllArea").hide().append($("#AreaNo option").clone());

//地址判斷縣市
$("#Address").keyup(function(e) {
if (this.cityarea) if (this.value.indexOf(this.cityarea) != 0) this.value = this.old_value;
});
$("#Address").keydown(function() {
this.old_value = this.value;
})
$("#Address").change(function() {
//自動判斷鄉鎮區域，自動選擇縣市鄉鎮，並填入正確資料
if ($("#AreaNo").get(0).selectedIndex == 0) {
$("#jAllArea option").each(function() {
var nAreaStart = $("#Address").val().indexOf(this.text);

if (nAreaStart != -1) {
nDefCity = $(this).attr("c");
nDefArea = this.value;
$("#CityNo option[value='"+$(this).attr("c")+"']").attr("selected",true);
setCityArea();
nAreaStart = nAreaStart + this.text.length;
sCityArea = $(this).attr("z") + $("#CityNo option[value='"+$(this).attr("c")+"']").attr("text") + (($(this).attr("text")!="全區") ? $(this).attr("text") : "");
$("#Address").val(sCityArea + $("#Address").val().substr(nAreaStart)).get(0).cityarea = sCityArea;

}
});
}
//自動判斷縣市，自動選擇縣市

if ($("#AreaNo").get(0).selectedIndex == 0 && $("#CityNo").get(0).selectedIndex != 0) {
var sAddr = $("#Address").val();
var nCityStart = sAddr.indexOf($("#CityNo option:selected").attr("text")) + $("#CityNo option:selected").attr("text").length;
for (i in aRoads) {
nRoadStar = sAddr.indexOf(aRoads[i]);
if (nRoadStar != -1) {
if (sAddr.indexOf("段",nRoadStar) != -1) nRoadStar = sAddr.indexOf("段",nRoadStar);
sRoad = sAddr.substr(nCityStart, nRoadStar - nCityStart + 1).replace(" ","");
for (i in aStrNums) if (i!=0) sRoad = sRoad.replace(aStrNums[i],i).replace(aStrNums2[i],i);
$.ajax({
url: "roadtoarea.php?city="+encodeURI($("#CityNo option:selected").attr("text"))+"&road="+encodeURI(sRoad),
success: function(response){
if (response != "") {
sArea = response.substr(1);
if (response.substr(0,1)==1) {
obj = $("#AreaNo option:contains('"+sArea+"')").get(0);
obj.selected = true;
nDefArea = obj.value;
setCityArea();

} else if (response.substr(0,1)==2) {
alert(sArea);
}
}
}
});
break;
}
}
}
})


$("#CityNo").change(function() {
setCityArea();

});
$("#AreaNo").change(function() {

});
setCityArea();
});
</script>
</body>
</html>