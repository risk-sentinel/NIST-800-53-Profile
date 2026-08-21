control 'AC-04(10)[01]' do
  impact 0.5
  title "capability is provided for privileged administrators to enable and disable #{input('ac_04_10_odp_01')} under #{input('ac_04_10_odp_03')};"
  desc <<~DESC
    Provide the capability for privileged administrators to enable and disable #{input('ac_4_10_prm_1')} under the following conditions: #{input('ac_4_10_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      capability is provided for privileged administrators to enable and disable #{input('ac_04_10_odp_01')} under #{input('ac_04_10_odp_03')};

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow information policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of security policy filters enabled/disabled by privileged administrators; list of privacy policy filters enabled/disabled by privileged administrators; list of approved data types for enabling/disabling by privileged administrators; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for enabling/disabling security and privacy policy filters; system/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy; security and privacy policy filters
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For example, as allowed by the system authorization, administrators can enable security or privacy policy filters to accommodate approved data types. Administrators also have the capability to select the filters that are executed on a specific data flow based on the type of data that is being transferred, the source and destination security domains, and other security or privacy relevant features, as needed.
  GUIDANCE
  tag nist: ['AC-4 (10)']
  tag control: 'AC-4 (10)'
  tag objective: 'AC-04(10)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_10: true
  tag odp: %w{ac_04_10_odp_01 ac_04_10_odp_03 ac_4_10_prm_1 ac_4_10_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(10)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
