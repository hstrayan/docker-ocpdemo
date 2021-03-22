package springboot.example;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
public class Bootup


{     
	@Value("${injectMsg1}")
	private String message1;
	
	@Value("${injectMsg2}")
	private String message2;
	

	@RequestMapping("/")
	String home() {
		if (!StringUtils.isEmpty(message1) && !StringUtils.isEmpty(message2))
		   return message1 + " " + message2;
		else return "one or more external variables missing";
	}

	public static void main( String[] args )
	{
		SpringApplication.run(Bootup.class, args);
	}
}
