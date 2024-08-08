package myweb;

import javax.servlet.http.HttpServletRequest;

public class ImplicitObjectTest {

	public static void main(String[] args) {
		HttpServletRequest req = null;
		req.getParameter("name");
	}

}
