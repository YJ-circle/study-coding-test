import java.io.*;
public class Main {
	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		char[] input = br.readLine().toCharArray();
		int[] times = {3, 3, 3, 4, 4,
			           4, 5, 5, 5, 6,
			           6, 6, 7, 7, 7,
			           8, 8, 8, 8, 9,
			           9, 9, 10, 10, 10,
			           10};
		int sum = 0;
		for(char c : input){
			sum += times[c - 'A'];
		}
		System.out.println(sum);
	}
}
