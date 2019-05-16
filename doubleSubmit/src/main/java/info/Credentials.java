package info;

public class Credentials {
	
	private static final String EMAIL = "gihan@gmail.com";
	private static final String PASSWORD = "csrf";

	public static boolean isValidUser(String email, String password)
	{
	    return EMAIL.equalsIgnoreCase(email) && PASSWORD.equalsIgnoreCase(password);
	}

}
