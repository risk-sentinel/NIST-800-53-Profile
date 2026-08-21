control 'AU-10(01)(a)' do
  impact 0.5
  title "the identity of the information producer is bound with the information to #{input('au_10_01_odp')};"
  desc <<~DESC
    (a) Bind the identity of the information producer with the information to #{input('au_10_01_odp')} ; and
    (b) Provide the means for authorized individuals to determine the identity of the producer of the information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the identity of the information producer is bound with the information to #{input('au_10_01_odp')};

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing non-repudiation; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing non-repudiation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Binding identities to the information supports audit requirements that provide organizational personnel with the means to identify who produced specific information in the event of an information transfer. Organizations determine and approve the strength of attribute binding between the information producer and the information based on the security category of the information and other relevant risk factors.
  GUIDANCE
  tag nist: ['AU-10 (1)']
  tag control: 'AU-10 (1)'
  tag objective: 'AU-10(01)(a)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_10_1: true
  tag odp: %w{au_10_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-10(01)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
