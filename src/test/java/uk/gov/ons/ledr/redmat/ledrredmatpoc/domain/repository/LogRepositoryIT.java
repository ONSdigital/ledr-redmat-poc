package uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.repository;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.test.context.web.WebAppConfiguration;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@ComponentScan(basePackages = {"uk.gov.ons.ledr.redmat"})
@EnableJpaRepositories(basePackages = {"uk.gov.ons.ledr.redmat"})
@EntityScan("uk.gov.ons.ledr.redmat")
@WebAppConfiguration
public class LogRepositoryIT {


  @Autowired
  private LogRepository underTest;

  @Test
  public void repositoryIsInitialised() {
    assertThat(underTest).isNotNull();
  }

  @Test
  public void testThatARecordCanBeReturned() {
    Log aaa = underTest.findBySchemaId("aaa");
    assertThat(aaa).isNotNull();
  }

}
