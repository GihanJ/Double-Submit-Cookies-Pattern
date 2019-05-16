package controllers;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import attributes.CookieFunction;
import info.Credentials;

@WebServlet("/SignInController")
public class SignInController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String email = request.getParameter("email"); //Retrieving email field value
	    String password = request.getParameter("password"); //Retrieving password field value
	    HttpSession session = request.getSession(true); //Get the current session or create a new session if not exists

	    if (Credentials.isValidUser(email, password)) //Validating credentials
	    {
	      String csrfToken = createToken(session.getId());
	      
	     response.addCookie(CookieFunction.COOKIE_WITH_SESSION_ID.apply(session)); //Adding a cookie with the session ID to the browser
	     response.addCookie(CookieFunction.COOKIE_WITH_CSRF_ID.apply(csrfToken)); //Adding a cookie with the CSRF token to the browser
	     response.sendRedirect("jsp/Home.jsp");
	    }
	    else
	    {
	    	response.sendRedirect("SignIn.jsp");
	    }
	 }
	 private String createToken(String strClearText)
	 {
	    return strClearText + "." + createRandomString();
	 }
	 private String createRandomString()
	 {
	    UUID randomUuid = UUID.randomUUID();
	    return randomUuid.toString();
	 }

}

