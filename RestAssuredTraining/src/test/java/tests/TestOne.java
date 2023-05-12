package tests;


import org.testng.annotations.*;
import io.restassured.RestAssured;



public class TestOne {
	
	@Test
	public void getListUsers() {
		RestAssured.baseURI = "https://reqres.in/api";
		RestAssured.given().param("page","2")
		.when()
		.get("/users")
		.then()
		.assertThat()
		.log()
		.all()
		.statusCode(200);
	}

}
