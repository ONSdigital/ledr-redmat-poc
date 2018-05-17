package uk.gov.ons.ledr.redmat.ledrredmatpoc.service;

import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;

public interface LogService {

  Log getLogByFileName(String fileName);

  Log getLogBySchemaId(String schemaId);

  Log getLogById(Integer id);

  Log getLogByFileId(Integer fileId);
}