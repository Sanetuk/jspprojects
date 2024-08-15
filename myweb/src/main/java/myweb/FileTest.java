package myweb;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.util.List;

public class FileTest {
	public static void main(String[] args) throws Exception {
		//product_list.txt파일을 읽어온다.
		//BufferedReader class(java.io에 정의된 클래스)
		List<String> list = new ArrayList<String>();
		Reader file = new FileReader("C:\\Users\\LX\\jsp\\workspace\\myweb\\product_list.txt");
		BufferedReader br = new BufferedReader(file);
		String line = br.readLine();
		System.out.println(line);
		while(line!=null) {
			System.out.println(line);
			list.add(line);
			line = br.readLine();
		}
		System.out.println(list);
		// file을 읽어서 그 file에 저장된 제품정보 목록을 리턴받는다.
		List<Product> productList = readProductList();
	}

	private static List<Product> readProductList() {
		// TODO Auto-generated method stub
		return null;
	}
}
