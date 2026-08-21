control 'CA-9' do
  impact 0.5
  title 'Internal System Connections'
  desc <<~DESC
    a. Authorize internal connections of #{input('ca_09_odp_01')} to the system;
    b. Document, for each internal connection, the interface characteristics, security and privacy requirements, and the nature of the information communicated;
    c. Terminate internal system connections after #{input('ca_09_odp_02')} ; and
    d. Review #{input('ca_09_odp_03')} the continued need for each internal connection.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CA-09a. internal connections of #{input('ca_09_odp_01')} to the system are authorized;
      CA-09b.
        CA-09b.[01] for each internal connection, the interface characteristics are documented;
        CA-09b.[02] for each internal connection, the security requirements are documented;
        CA-09b.[03] for each internal connection, the privacy requirements are documented;
        CA-09b.[04] for each internal connection, the nature of the information communicated is documented;
      CA-09c. internal system connections are terminated after #{input('ca_09_odp_02')};
      CA-09d. the continued need for each internal connection is reviewed #{input('ca_09_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; access control policy; procedures addressing system connections; system and communications protection policy; system design documentation; system configuration settings and associated documentation; list of components or classes of components authorized as internal system connections; assessment report; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for developing, implementing, or authorizing internal system connections; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting internal system connections
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Internal system connections are connections between organizational systems and separate constituent system components (i.e., connections between components that are part of the same system) including components used for system development. Intra-system connections include connections with mobile devices, notebook and desktop computers, tablets, printers, copiers, facsimile machines, scanners, sensors, and servers. Instead of authorizing each internal system connection individually, organizations can authorize internal connections for a class of system components with common characteristics and/or configurations, including printers, scanners, and copiers with a specified processing, transmission, and storage capability or smart phones and tablets with a specific baseline configuration. The continued need for an internal system connection is reviewed from the perspective of whether it provides support for organizational missions or business functions.
  GUIDANCE
  tag nist: ['CA-9']
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ca_09_odp_01 ca_09_odp_02 ca_09_odp_03}

  describe 'NIST SP 800-53 Rev 5 control CA-9' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
