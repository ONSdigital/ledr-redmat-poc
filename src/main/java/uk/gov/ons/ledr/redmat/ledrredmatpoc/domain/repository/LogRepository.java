package uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model.Log;

import java.util.List;

@Repository
public interface LogRepository extends JpaRepository<Log, Integer> {

  List<Log> findByFileName(String fileName);

  Log findBySchemaId(String schemaId);

  Log findByFileId(Integer fileId);

}
