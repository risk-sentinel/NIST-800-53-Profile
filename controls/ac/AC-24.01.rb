control 'AC-24(01)' do
  impact 0.5
  title "#{input('ac_24_01_odp_01')} is transmitted using #{input('ac_24_01_odp_02')} to #{input('ac_24_01_odp_03')} that enforce access control decisions."
  desc <<~DESC
    Transmit #{input('ac_24_01_odp_01')} using #{input('ac_24_01_odp_02')} to #{input('ac_24_01_odp_03')} that enforce access control decisions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_24_01_odp_01')} is transmitted using #{input('ac_24_01_odp_02')} to #{input('ac_24_01_odp_03')} that enforce access control decisions.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing access enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authorization processes and access control decisions may occur in separate parts of systems or in separate systems. In such instances, authorization information is transmitted securely (e.g., using cryptographic mechanisms) so that timely access control decisions can be enforced at the appropriate locations. To support the access control decisions, it may be necessary to transmit as part of the access authorization information supporting security and privacy attributes. This is because in distributed systems, there are various access control decisions that need to be made, and different entities make these decisions in a serial fashion, each requiring those attributes to make the decisions. Protecting access authorization information ensures that such information cannot be altered, spoofed, or compromised during transmission.
  GUIDANCE
  tag nist: ['AC-24 (1)']
  tag control: 'AC-24 (1)'
  tag objective: 'AC-24(01)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_24_1: true
  tag odp: %w{ac_24_01_odp_01 ac_24_01_odp_02 ac_24_01_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective AC-24(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
