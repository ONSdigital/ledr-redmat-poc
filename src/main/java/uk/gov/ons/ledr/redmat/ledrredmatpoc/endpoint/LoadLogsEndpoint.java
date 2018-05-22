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

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/log", produces = "application/json")
public class LoadLogsEndpoint {

  @Autowired
  private LogService logService;

  @Autowired
  private MapperFacade mapperFacade;

  @RequestMapping(value = "/{fileId}", method = RequestMethod.GET)
  public ResponseEntity<LogDTO> getLogs(@PathVariable("fileId") Integer fileName) {
    Log logg = logService.getLogByFileId(fileName);

    LogDTO result = mapperFacade.map(logg, LogDTO.class);
    return ResponseEntity.ok(result);
  }

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public ResponseEntity<List<LogDTO>> getLogs() {
    List<Log> logs = logService.getAllLogs();
   // List<LogDTO> results = new ArrayList<>();

    List<LogDTO> results = mapperFacade.mapAsList(logs, LogDTO.class);
//    for (Log log : logs) {
//      LogDTO result = mapperFacade.map(log, LogDTO.class);
//      results.add(result);
//    }
    return ResponseEntity.ok(results);
  }
}
