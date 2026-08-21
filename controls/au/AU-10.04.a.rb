control 'AU-10(04)(a)' do
  impact 0.5
  title "the binding of the information reviewer identity to the information at the transfer or release points prior to release or transfer between #{input('au_10_04_odp_01')} is validated;"
  desc <<~DESC
    (a) Validate the binding of the information reviewer identity to the information at the transfer or release points prior to release or transfer between #{input('au_10_04_odp_01')} ; and
    (b) Perform #{input('au_10_04_odp_02')} in the event of a validation error.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the binding of the information reviewer identity to the information at the transfer or release points prior to release or transfer between #{input('au_10_04_odp_01')} is validated;

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing non-repudiation; system design documentation; system configuration settings and associated documentation; validation records; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing non-repudiation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Validating the binding of the information reviewer identity to the information at transfer or release points prevents the unauthorized modification of information between review and the transfer or release. The validation of bindings can be achieved by using cryptographic checksums. Organizations determine if validations are in response to user requests or generated automatically.
  GUIDANCE
  tag nist: ['AU-10 (4)']
  tag control: 'AU-10 (4)'
  tag objective: 'AU-10(04)(a)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_10_4: true
  tag odp: %w{au_10_04_odp_01 au_10_04_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AU-10(04)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
