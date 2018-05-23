package uk.gov.ons.ledr.redmat.ledrredmatpoc.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.repository.LogRepository;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.service.LogService;

import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class LogServiceImpl implements LogService {

  @Autowired
  private LogRepository logRepository;

  /**
   * Get all load logs for specific file
   * @param fileName the file name to search for
   * @return List<Log> list of all load logs with matching file name
   */
  public List<Log> getLogsByFileName(String fileName) {

    List<Log> loadLogs = logRepository.findByFileName(fileName);

    return loadLogs;

  }

  /**
   * Get single log
   * @param id
   * @return
   */
  public Log getLogByFileId(Integer id) {
    log.info(id + "");

    Log loadLog = logRepository.findByFileId(id);

    return loadLog;
  }

  /**
   * Get a list of all load logs in the database
   * @return List<Log> list of all load logs
   */
  public List<Log> getAllLogs() {

    List<Log> loadLogs = logRepository.findAll();

    return loadLogs;
  }


}
