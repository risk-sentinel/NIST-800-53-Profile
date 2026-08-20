control 'IA-8 (6)' do
  impact 0.5
  title 'Disassociability'
  desc <<~DESC
    Implement the following measures to disassociate user attributes or identifier assertion relationships among individuals, credential service providers, and relying parties: #{input('ia_08_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-08(06) #{input('ia_08_06_odp')} to disassociate user attributes or identifier assertion relationships among individuals, credential service providers, and relying parties are implemented.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; privacy plan; procedures addressing user identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers; organizational personnel with account management responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Federated identity solutions can create increased privacy risks due to the tracking and profiling of individuals. Using identifier mapping tables or cryptographic techniques to blind credential service providers and relying parties from each other or to make identity attributes less visible to transmitting parties can reduce these privacy risks.
  GUIDANCE
  tag nist: ['IA-8 (6)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_08_06_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-8 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
