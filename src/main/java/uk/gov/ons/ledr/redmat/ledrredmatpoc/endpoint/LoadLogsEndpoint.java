package uk.gov.ons.ledr.redmat.ledrredmatpoc.endpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

  /**
   * Request a list of all load logs for a given file
   * @param fileName the file name to search for
   * @return List<LogDTO> list of load logs that match fileName
   */
  @RequestMapping(value = "/{fileName}", method = RequestMethod.GET)
  public ResponseEntity<List<LogDTO>> getLogs(@PathVariable("fileName") String fileName,
                                              @RequestParam("order") boolean order) {
    List<Log> logs = logService.getLogsByFileName(fileName, order);

    List<LogDTO> result = mapperFacade.mapAsList(logs, LogDTO.class);
    return ResponseEntity.ok(result);
  }

  /**
   * Request list of all load logs in the database
   * @return List<LogDTO> list of load logs
   */
  @RequestMapping(value = "/", method = RequestMethod.GET)
  public ResponseEntity<List<LogDTO>> getLogs(@RequestParam("order") boolean order) {
    List<Log> logs = logService.getAllLogs(order );

    List<LogDTO> results = mapperFacade.mapAsList(logs, LogDTO.class);

    return ResponseEntity.ok(results);
  }
}
