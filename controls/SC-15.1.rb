control 'SC-15 (1)' do
  impact 0.5
  title 'Physical or Logical Disconnect'
  desc <<~DESC
    Provide #{input('sc_15_01_odp')} disconnect of collaborative computing devices in a manner that supports ease of use.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-15(01) the #{input('sc_15_01_odp')} disconnect of collaborative computing devices is/are provided in a manner that supports ease of use.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing collaborative computing; access control policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with responsibilities for managing collaborative computing devices
      TEST: Mechanisms supporting and/or implementing the physical disconnect of collaborative computing devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Failing to disconnect from collaborative computing devices can result in subsequent compromises of organizational information. Providing easy methods to disconnect from such devices after a collaborative computing session ensures that participants carry out the disconnect activity without having to go through complex and tedious procedures. Disconnect from collaborative computing devices can be manual or automatic.
  GUIDANCE
  tag nist: ['SC-15 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_15_01_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-15 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
