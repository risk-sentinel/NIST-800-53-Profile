control 'SC-51' do
  impact 0.5
  title 'Hardware-based Protection'
  desc <<~DESC
    a. Employ hardware-based, write-protect for #{input('sc_51_odp_01')} ; and
    b. Implement specific procedures for #{input('sc_51_odp_02')} to manually disable hardware write-protect for firmware modifications and re-enable the write-protect prior to returning to operational mode.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-51a. hardware-based write-protect for #{input('sc_51_odp_01')} is employed;
      SC-51b.
        SC-51b.[01] specific procedures are implemented for #{input('sc_51_odp_02')} to manually disable hardware write-protect for firmware modifications;
        SC-51b.[02] specific procedures are implemented for #{input('sc_51_odp_02')} to re-enable the write-protect prior to returning to operational mode.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing firmware modifications; system design documentation; system configuration settings and associated documentation; system architecture; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Organizational processes for modifying system firmware; mechanisms supporting and/or implementing hardware-based write-protection for system firmware
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SC-51']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_51_odp_01 sc_51_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-51' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
