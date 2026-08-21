control 'AC-4 (7)' do
  impact 0.5
  title 'One-way Flow Mechanisms'
  desc <<~DESC
    Enforce one-way information flows through hardware-based flow control mechanisms.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(07) one-way information flows are enforced through hardware-based flow control mechanisms.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system hardware mechanisms and associated configurations; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Hardware mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    One-way flow mechanisms may also be referred to as a unidirectional network, unidirectional security gateway, or data diode. One-way flow mechanisms can be used to prevent data from being exported from a higher impact or classified domain or system while permitting data from a lower impact or unclassified domain or system to be imported.
  GUIDANCE
  tag nist: ['AC-4 (7)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
