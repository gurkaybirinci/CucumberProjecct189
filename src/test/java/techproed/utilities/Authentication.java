package techproed.utilities;

import io.restassured.http.ContentType;
import io.restassured.response.Response;

import static io.restassured.RestAssured.given;

public class Authentication {

//    public static void main(String[] args) {
//        System.out.println(generateToken());
//    }

    public static String generateToken(){
        String body = "{\n" +
                "  \"password\": \"Gurkay123+\",\n" +
                "  \"username\": \"AdminGurkay\"\n" +
                "}";

        Response response = given().when().body(body).contentType(ContentType.JSON).post("https://managementonschools.com/app/auth/login");
        return response.jsonPath().getString("token");
    }

}
