package uk.gov.ons.ledr.redmat.ledrredmatpoc.service;

import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;

import java.util.List;

public interface LogService {

  List<Log> getLogsByFileName(String fileName);

  Log getLogByFileId(Integer fileId);

  List<Log> getAllLogs();
}