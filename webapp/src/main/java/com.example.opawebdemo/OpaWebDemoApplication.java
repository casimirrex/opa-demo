package com.example.opawebdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class OpaWebDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(OpaWebDemoApplication.class, args);
	}

	@RestController
	public class SampleRestClass {

		@GetMapping("/hello")
		public String sayHello() {
			return "Hello World";
		}

		@GetMapping("/bye")
		public String sayBye() {
			return "Bye";
		}

	}

}
