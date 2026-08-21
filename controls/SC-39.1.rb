control 'SC-39 (1)' do
  impact 0.5
  title 'Hardware Separation'
  desc <<~DESC
    Implement hardware separation mechanisms to facilitate process isolation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-39(01) hardware separation is implemented to facilitate process isolation.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; system design documentation; system configuration settings and associated documentation; system architecture; system documentation for hardware separation mechanisms; system documentation from vendors, manufacturers, or developers; independent verification and validation documentation; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: System capability implementing underlying hardware separation mechanisms for process separation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Hardware-based separation of system processes is generally less susceptible to compromise than software-based separation, thus providing greater assurance that the separation will be enforced. Hardware separation mechanisms include hardware memory management.
  GUIDANCE
  tag nist: ['SC-39 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-39 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
