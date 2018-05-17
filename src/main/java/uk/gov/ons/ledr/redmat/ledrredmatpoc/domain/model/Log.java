package uk.gov.ons.ledr.redmat.ledrredmatpoc.domain.model;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Data
@AllArgsConstructor
@Builder
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@Table(name = "REFERENCE_DATA_LOAD_LOG", schema = "C##LEDRRDM")
public class Log implements Serializable {

  @Column(name = "SCHEMA_ID")
  private String schemaId;

  @Column(name = "FILE_ID")
  private Integer fileId;

  @Id
  @Column(name = "INSTANCE_ID")
  private Integer instanceId;

  @Column(name = "FILE_NAME")
  private String fileName;

  @Column(name = "VERSION_TEXT")
  private String versionText;

  @Column(name = "EFFECTIVE_FROM")
  private Date effectiveFrom;

  @Column(name = "RECORDS_LOADED")
  private Integer recordsLoaded;

  @Column(name = "USER_ID")
  private String userId;

  @Column(name = "USER_EMAIL")
  private String userEmail;

  @Column(name = "PSU_STATUS_ID")
  private Integer psuStatusId;

  @Column(name = "STARTED")
  private Date started;

  @Column(name = "ENDED")
  private Date ended;

}
