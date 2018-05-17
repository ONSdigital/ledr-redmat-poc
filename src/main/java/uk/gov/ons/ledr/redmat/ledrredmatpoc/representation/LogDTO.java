package uk.gov.ons.ledr.redmat.ledrredmatpoc.representation;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PUBLIC)
public class LogDTO {

  private String schemaId;

  private Integer fileId;

  private Integer instanceId;

  private String fileName;

  private String versionText;

  private Date effectiveFrom;

  private Integer recordsLoaded;

  private String userId;

  private String userEmail;

  private Integer psuStatusId;

  private Date started;

  private Date ended;
}
