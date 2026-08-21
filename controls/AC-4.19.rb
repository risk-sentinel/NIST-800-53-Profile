control 'AC-4 (19)' do
  impact 0.5
  title 'Validation of Metadata'
  desc <<~DESC
    When transferring information between different security domains, implement #{input('ac_4_19_prm_1')} on metadata.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(19)[01] when transferring information between different security domains, #{input('ac_04_19_odp_01')} are implemented on metadata;
      AC-04(19)[02] when transferring information between different security domains, #{input('ac_04_19_odp_02')} are implemented on metadata.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of security policy filtering criteria applied to metadata and data payloads; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities; organizational personnel with privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement functions; security and policy filters
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    All information (including metadata and the data to which the metadata applies) is subject to filtering and inspection. Some organizations distinguish between metadata and data payloads (i.e., only the data to which the metadata is bound). Other organizations do not make such distinctions and consider metadata and the data to which the metadata applies to be part of the payload.
  GUIDANCE
  tag nist: ['AC-4 (19)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_19_odp_01 ac_04_19_odp_02 ac_4_19_prm_1}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (19)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
