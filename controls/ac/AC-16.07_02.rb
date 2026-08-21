control 'AC-16(07)[02]' do
  impact 0.5
  title "a consistent interpretation of privacy attributes transmitted between distributed system components is provided."
  desc <<~DESC
    Provide a consistent interpretation of security and privacy attributes transmitted between distributed system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a consistent interpretation of privacy attributes transmitted between distributed system components is provided.

    Assessment methods and objects:
      EXAMINE: Access control policies and procedures; procedures addressing consistent interpretation of security and privacy attributes transmitted between distributed system components; procedures addressing access enforcement; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy access control policy; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for providing consistent interpretation of security and privacy attributes used in access enforcement and information flow enforcement actions; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing access enforcement and information flow enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To enforce security and privacy policies across multiple system components in distributed systems, organizations provide a consistent interpretation of security and privacy attributes employed in access enforcement and flow enforcement decisions. Organizations can establish agreements and processes to help ensure that distributed system components implement attributes with consistent interpretations in automated access enforcement and flow enforcement actions.
  GUIDANCE
  tag nist: ['AC-16 (7)']
  tag control: 'AC-16 (7)'
  tag objective: 'AC-16(07)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_7: true

  describe 'NIST SP 800-53A Rev 5 objective AC-16(07)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
