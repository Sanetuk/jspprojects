
public class StringTest {
	public static void main(String[] args) {
		String uri = "/myservlet/emplist.do";
		System.out.println(uri.endsWith("/emplist.do"));
		System.out.println(uri.lastIndexOf('/'));
		System.out.println(uri.substring(uri.lastIndexOf('/')));
		
	}
}
