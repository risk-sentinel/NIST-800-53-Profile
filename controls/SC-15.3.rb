control 'SC-15 (3)' do
  impact 0.5
  title 'Disabling and Removal in Secure Work Areas'
  desc <<~DESC
    Disable or remove collaborative computing devices and applications from #{input('sc_15_03_odp_01')} in #{input('sc_15_03_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-15(03) collaborative computing devices and applications are disabled or removed from #{input('sc_15_03_odp_01')} in #{input('sc_15_03_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing collaborative computing; access control policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; list of secure work areas; systems or system components in secured work areas where collaborative computing devices are to be disabled or removed; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing collaborative computing devices
      TEST: Mechanisms supporting and/or implementing the capability to disable collaborative computing devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Failing to disable or remove collaborative computing devices and applications from systems or system components can result in compromises of information, including eavesdropping on conversations. A Sensitive Compartmented Information Facility (SCIF) is an example of a secure work area.
  GUIDANCE
  tag nist: ['SC-15 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_15_03_odp_01 sc_15_03_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-15 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
