control 'AC-20(01)(b)' do
  impact 0.5
  title "authorized individuals are permitted to use an external system to access the system or to process, store, or transmit organization-controlled information only after retention of approved system connection or processing agreements with the organizational entity hosting the external system (if applicable)."
  desc <<~DESC
    Permit authorized individuals to use an external system to access the system or to process, store, or transmit organization-controlled information only after:
      (a) Verification of the implementation of controls on the external system as specified in the organization’s security and privacy policies and security and privacy plans; or
      (b) Retention of approved system connection or processing agreements with the organizational entity hosting the external system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authorized individuals are permitted to use an external system to access the system or to process, store, or transmit organization-controlled information only after retention of approved system connection or processing agreements with the organizational entity hosting the external system (if applicable).

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing the use of external systems; system connection or processing agreements; account management documents; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing limits on use of external systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Limiting authorized use recognizes circumstances where individuals using external systems may need to access organizational systems. Organizations need assurance that the external systems contain the necessary controls so as not to compromise, damage, or otherwise harm organizational systems. Verification that the required controls have been implemented can be achieved by external, independent assessments, attestations, or other means, depending on the confidence level required by organizations.
  GUIDANCE
  tag nist: ['AC-20 (1)']
  tag control: 'AC-20 (1)'
  tag objective: 'AC-20(01)(b)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_20_1: true

  describe 'NIST SP 800-53A Rev 5 objective AC-20(01)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
