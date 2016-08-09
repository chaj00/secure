package esapi;

import org.owasp.esapi.ESAPI;
import org.owasp.esapi.codecs.Codec;
import org.owasp.esapi.codecs.OracleCodec;

public class Test {
	public static void main(String[] args) {
		String a = "<script>alert('dddd')</script>";
		String b = ESAPI.encoder().encodeForHTML(a);
		System.out.println("encoded=" + b);
		String username = "airlee' or 1=1";
		String password = "pppp";
		Codec ORACLE_CODEC = new OracleCodec();
		String query = "SELECT user_id FROM user_data WHERE user_name = '"
				+ ESAPI.encoder().encodeForSQL(ORACLE_CODEC, username) + "' and user_password = '"
				+ ESAPI.encoder().encodeForSQL(ORACLE_CODEC, password) + "'";

		System.out.println("query=" + query);
	}
}
