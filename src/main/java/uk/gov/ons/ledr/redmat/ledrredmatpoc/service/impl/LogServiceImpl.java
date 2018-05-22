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


  public Log getLogByFileName(String fileName) {

    Log loadLog = logRepository.findByFileName(fileName);

    return loadLog;

  }

  public Log getLogByFileId(Integer id) {
    log.info(id + "");

    Log loadLog = logRepository.findByFileId(id);

    return loadLog;
  }

  public List<Log> getAllLogs() {

    List<Log> loadLogs = logRepository.findAll();

    return loadLogs;
  }


}
