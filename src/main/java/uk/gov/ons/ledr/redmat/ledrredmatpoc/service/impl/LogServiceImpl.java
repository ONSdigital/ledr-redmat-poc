package uk.gov.ons.ledr.redmat.ledrredmatpoc.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.repository.LogRepository;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.service.LogService;

import javax.persistence.EntityManager;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class LogServiceImpl implements LogService {

  @Autowired
  private LogRepository logRepository;

  @Autowired
  private EntityManager entityManager;

  /**
   * Get all load logs for specific file
   * @param fileName the file name to search for
   * @return List<Log> list of all load logs with matching file name
   */
  public List<Log> getLogsByFileName(String fileName, boolean order) {
    log.info("HI" +order);
    List<Log> loadLogs = logRepository.findByFileName(fileName);

    if(order) {
      log.info("IN THE IF");
      loadLogs = sortLogsByEffectiveFrom(loadLogs);
    }


    return loadLogs;

  }

  /**
   * Get single log
   * @param fileId
   * @return
   */
  public List<Log> getLogByFileId(int fileId, boolean order) {
    log.info(fileId + "");

    entityManager.clear();

    List<Log> loadLogs = logRepository.findByFileId(fileId);

    if(order) {
      loadLogs = sortLogsByEffectiveFrom(loadLogs);
    }

    return loadLogs;
  }

  /**
   * Get a list of all load logs in the database
   * @return List<Log> list of all load logs
   */
  public List<Log> getAllLogs(boolean order) {

    entityManager.clear();

    List<Log> loadLogs = logRepository.findAll();

    if(order) {
      loadLogs = sortLogsByEffectiveFrom(loadLogs);
    }

    return loadLogs;
  }


  private List<Log> sortLogsByEffectiveFrom(List<Log> logs) {
    log.info("MADE IT HERE");
    logs.forEach(System.out::println);
    logs.sort(new Comparator<Log>() {
      @Override
      public int compare(Log log1, Log log2) {
        if(log1.getEffectiveFrom().compareTo(log2.getEffectiveFrom()) == 0){
          return 0;
        }
        return log1.getEffectiveFrom().compareTo(log2.getEffectiveFrom()) > 0  ? -1 : 1;
      }
    });

    logs.forEach(System.out::println);

    return logs;
  }
}
