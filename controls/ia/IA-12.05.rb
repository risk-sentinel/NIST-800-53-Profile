control 'IA-12(05)' do
  impact 0.5
  title "a #{input('ia_12_05_odp')} is delivered through an out-of-band channel to verify the user’s address (physical or digital) of record."
  desc <<~DESC
    Require that a #{input('ia_12_05_odp')} be delivered through an out-of-band channel to verify the users address (physical or digital) of record.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a #{input('ia_12_05_odp')} is delivered through an out-of-band channel to verify the user’s address (physical or digital) of record.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identity proofing; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To make it more difficult for adversaries to pose as legitimate users during the identity proofing process, organizations can use out-of-band methods to ensure that the individual associated with an address of record is the same individual that participated in the registration. Confirmation can take the form of a temporary enrollment code or a notice of proofing. The delivery address for these artifacts is obtained from records and not self-asserted by the user. The address can include a physical or digital address. A home address is an example of a physical address. Email addresses and telephone numbers are examples of digital addresses.
  GUIDANCE
  tag nist: ['IA-12 (5)']
  tag control: 'IA-12 (5)'
  tag objective: 'IA-12(05)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_12_5: true
  tag odp: %w{ia_12_05_odp}

  describe 'NIST SP 800-53A Rev 5 objective IA-12(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
