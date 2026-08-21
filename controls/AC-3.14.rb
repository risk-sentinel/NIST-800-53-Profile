control 'AC-3 (14)' do
  impact 0.5
  title 'Individual Access'
  desc <<~DESC
    Provide #{input('ac_03_14_odp_01')} to enable individuals to have access to the following elements of their personally identifiable information: #{input('ac_03_14_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-03(14) #{input('ac_03_14_odp_01')} are provided to enable individuals to have access to #{input('ac_03_14_odp_02')} of their personally identifiable information.

    Assessment methods and objects:
      EXAMINE: Access mechanisms (e.g., request forms and application interfaces); access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; documentation regarding access to an individual’s personally identifiable information; system audit records; system security plan; privacy plan; privacy impact assessment; privacy assessment findings and/or reports; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security and privacy responsibilities; legal counsel
      TEST: Mechanisms implementing access enforcement functions; mechanisms enabling individual access to personally identifiable information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Individual access affords individuals the ability to review personally identifiable information about them held within organizational records, regardless of format. Access helps individuals to develop an understanding about how their personally identifiable information is being processed. It can also help individuals ensure that their data is accurate. Access mechanisms can include request forms and application interfaces. For federal agencies, [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) processes can be located in systems of record notices and on agency websites. Access to certain types of records may not be appropriate (e.g., for federal agencies, law enforcement records within a system of records may be exempt from disclosure under the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) ) or may require certain levels of authentication assurance. Organizational personnel consult with the senior agency official for privacy and legal counsel to determine appropriate mechanisms and access rights or limitations.
  GUIDANCE
  tag nist: ['AC-3 (14)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag odp: %w{ac_03_14_odp_01 ac_03_14_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-3 (14)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
