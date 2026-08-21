control 'AC-04(24)[02]' do
  impact 0.5
  title "when transferring information between different security domains, the data is regenerated to be consistent with its intended specification."
  desc <<~DESC
    When transferring information between different security domains, parse incoming data into an internal normalized format and regenerate the data to be consistent with its intended specification.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      when transferring information between different security domains, the data is regenerated to be consistent with its intended specification.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Converting data into normalized forms is one of most of effective mechanisms to stop malicious attacks and large classes of data exfiltration.
  GUIDANCE
  tag nist: ['AC-4 (24)']
  tag control: 'AC-4 (24)'
  tag objective: 'AC-04(24)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_24: true

  describe 'NIST SP 800-53A Rev 5 objective AC-04(24)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
