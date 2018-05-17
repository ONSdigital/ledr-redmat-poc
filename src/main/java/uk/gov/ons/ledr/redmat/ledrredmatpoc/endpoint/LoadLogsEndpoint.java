package uk.gov.ons.ledr.redmat.ledrredmatpoc.endpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.representation.LogDTO;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.service.LogService;
import ma.glasnost.orika.MapperFacade;



@RestController
@RequestMapping(value = "/log", produces = "application/json")
public class LoadLogsEndpoint {

  @Autowired
  private LogService logService;

  @Autowired
  private MapperFacade mapperFacade;

  @RequestMapping(value = "/{fileName}", method = RequestMethod.GET)
  public ResponseEntity<LogDTO> getLogs(@PathVariable("fileName") Integer fileName) {
    Log logg = logService.getLogByFileId(fileName);

    LogDTO result = mapperFacade.map(logg, LogDTO.class);
    result.getFileName();
    return ResponseEntity.ok(result);
  }
}
