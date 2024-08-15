<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//client가 전송한 파일을 저장한다.
	DiskFileUpload upload = new DiskFileUpload();
	List<FileItem> list = upload.parseRequest(request);//list속에는 클라이언트 정보가 들어있다.
	String dir = System.getProperty("user.dir");//디폴트 저장 폴더
	System.out.println(dir); //eclipse
	for(FileItem item : list) {
		if(item.isFormField()){
			//title로 전송된 데이터 추출
			String fieldName = item.getFieldName();
			String value = item.getString("utf-8");
			System.out.printf("fieldName=%s, value=%s\n", fieldName, value);
		}else{
			String name = item.getName();
			String localDir = "C:/Users/LX/jsp/workspace/myweb/src/main/webapp/image/";
			File file = new File(localDir + name);	
			item.write(file);
			out.println("파일이 저장되었습니다.");
		}
	}
%>
</body>
</html>