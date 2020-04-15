package com.example.opawebdemo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.AuthenticationEntryPoint;

@SpringBootTest
class OpaWebDemoApplicationTests {

	@MockBean
	AuthenticationEntryPoint authenticationEntryPoint;

	@Test
	void contextLoads() {
	}

}
