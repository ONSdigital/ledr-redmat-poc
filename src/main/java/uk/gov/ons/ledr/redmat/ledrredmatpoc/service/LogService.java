package uk.gov.ons.ledr.redmat.ledrredmatpoc.service;

import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;

import java.util.List;

public interface LogService {

  List<Log> getLogsByFileName(String fileName, boolean order);

  List<Log> getLogByFileId(int fileId, boolean order);

  List<Log> getAllLogs(boolean order);

}