package techproed.stepDefinition.api_step_defs;

import io.cucumber.java.en.*;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import techproed.pojos.dean_controller.DeanPostPojo;
import techproed.pojos.dean_controller.DeanPostResponsePojo;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;
import static techproed.base_url.BaseUrl.setUp;
import static techproed.base_url.BaseUrl.spec;

public class DeanControllerApi {
    DeanPostPojo payload;
    Response response;
    DeanPostResponsePojo actualData;

    @Given("{string} yetkisi ile giris yapilir")
    public void yetkisi_ile_giris_yapilir(String string) {
        setUp("AdminGurkay", "Gurkay123+");
    }

    @Given("Dean Save icin URL duzenlenir")
    public void dean_save_icin_url_duzenlenir() {
        spec.pathParams("first", "dean", "second", "save");
    }
    @Given("Dean Save icin Payload duzenlenir")
    public void dean_save_icin_payload_duzenlenir() {
        payload = new DeanPostPojo("1975-05-05", "İstanbul", "FEMALE", "Ayşe", "12345678Aa", "555-275-7695", "568-76-7867", "Yılmaz", "ayseyilmaz");
    }
    @When("Dean Save icin POST Request gonderilir ve Response alinir")
    public void dean_save_icin_post_request_gonderilir_ve_response_alinir() {
        response = given(spec).body(payload).when().post("{first}/{second}");
        actualData = response.as(DeanPostResponsePojo.class);
    }
    @Then("Status kodun {int} oldugu dogrulanir")
    public void status_kodun_oldugu_dogrulanir(int statusCode) {
        assertEquals(statusCode, response.statusCode());
    }
    @Then("Dean Save icin  Response Body dogrulanir")
    public void dean_save_icin_response_body_dogrulanir() {
        assertEquals(payload.getBirthDay(), actualData.getObject().getBirthDay());
        assertEquals(payload.getBirthPlace(), actualData.getObject().getBirthPlace());
        assertEquals(payload.getGender(), actualData.getObject().getGender());
        assertEquals(payload.getName(), actualData.getObject().getName());
        assertEquals(payload.getPhoneNumber(), actualData.getObject().getPhoneNumber());
        assertEquals(payload.getSsn(), actualData.getObject().getSsn());
        assertEquals(payload.getSurname(), actualData.getObject().getSurname());
        assertEquals(payload.getUsername(), actualData.getObject().getUsername());
    }


}
