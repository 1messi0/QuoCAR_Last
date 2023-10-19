<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의사항 내용조회</title>
<link rel="shortcut icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css" />

<style>
  
   #table  td:first-child   { width : 15%;  }  
   #table  td:nth-child(2)  { width : 35%;  }  
   #table  td:nth-child(3)  { width : 15%;  }  
   #table  td:last-child    { width : 35%;  }  
   
   #table  tr:nth-child(4)  { height : 400px; 
       vertical-align: top;
   }
       
   #table  td:last-child    { text-align: center;  }
   
   span { display:inline-block; width:15px;  }
   
   /* class="btn btn-primary btn-sm" */
   .btn:hover                    { background : lightgreen;  }   
   .btn-primary:hover            { background : lightgreen;  }   
   .btn.btn-primary.btn-sm:hover { background : lightgreen;  }   
   
   /* menu-bar */
   .menu-bar {
  background-color: #f0f0f0;
}

.menu-bar td {
  padding: 10px;
  border-right: 1px solid #ccc;
}

.menu-bar td:last-child {
  border-right: none; /* 마지막 메뉴 항목의 우측 선 제거 */
}

.menu-bar a {
  text-decoration: none;
  color: #333333;
}

.menu-bar a:hover {
  color: #ff0000;
}
</style>

</head>
<body>
 <jsp:include page="/WEB-INF/views/include/header.jsp" />
 <main>
  <div id="main">
   <!--  메뉴 목록 -->
   <%@include file="/WEB-INF/include/cmenu.jsp" %>

  <table id="table">   
 
   <tr>
     <td class="center">글번호</td>
     <td class="center">${ vo.csc_idx  }</td>
   </tr> 
   <tr>
     <td class="center">작성자</td>
     <td class="center">${ vo.csc_writer }</td>
     <td class="center">작성일</td>
     <td class="center">${ vo.csc_regdate }</td>
   </tr> 
   <tr>
     <td class="center">제목</td>
     <td colspan="3" style="text-align:left">${ vo.csc_title     }</td>    
   </tr> 
   <tr>
     <td class="center">내용</td>
     <td colspan="3" style="text-align:left">${ vo.csc_cont }</td>
   </tr>   
   
  </table>

  </div>
  </main>
</body>
</html>








