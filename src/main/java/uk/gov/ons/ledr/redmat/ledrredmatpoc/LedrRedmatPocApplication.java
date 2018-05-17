package uk.gov.ons.ledr.redmat.ledrredmatpoc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.service.impl.LogServiceImpl;

@SpringBootApplication
@ComponentScan(basePackages = {"uk.gov.ons.ledr.redmat"})
@EnableJpaRepositories(basePackages = {"uk.gov.ons.ledr.redmat"})
@EntityScan("uk.gov.ons.ledr.redmat")
public class LedrRedmatPocApplication {

	public static void main(String[] args) {
		SpringApplication.run(LedrRedmatPocApplication.class, args);
	}
}
