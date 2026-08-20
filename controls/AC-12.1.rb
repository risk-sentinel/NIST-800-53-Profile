control 'AC-12 (1)' do
  impact 0.5
  title 'User-initiated Logouts'
  desc <<~DESC
    Provide a logout capability for user-initiated communications sessions whenever authentication is used to gain access to #{input('ac_12_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-12(01) a logout capability is provided for user-initiated communications sessions whenever authentication is used to gain access to #{input('ac_12_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing session termination; user logout messages; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: System session termination mechanisms; logout capabilities for user-initiated communications sessions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information resources to which users gain access via authentication include local workstations, databases, and password-protected websites or web-based services.
  GUIDANCE
  tag nist: ['AC-12 (1)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_12_01_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-12 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
