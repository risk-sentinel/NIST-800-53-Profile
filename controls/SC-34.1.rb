control 'SC-34 (1)' do
  impact 0.5
  title 'No Writable Storage'
  desc <<~DESC
    Employ #{input('sc_34_01_odp')} with no writeable storage that is persistent across component restart or power on/off.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-34(01) #{input('sc_34_01_odp')} are employed with no writeable storage that is persistent across component restart or power on/off.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing non-modifiable executable programs; system design documentation; system configuration settings and associated documentation; system architecture; list of system components to be employed without writeable storage capabilities; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Mechanisms supporting and/or implementing the employment of components with no writeable storage; mechanisms supporting and/or implementing persistent non-writeable storage across component restart and power on/off
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Disallowing writeable storage eliminates the possibility of malicious code insertion via persistent, writeable storage within the designated system components. The restriction applies to fixed and removable storage, with the latter being addressed either directly or as specific restrictions imposed through access controls for mobile devices.
  GUIDANCE
  tag nist: ['SC-34 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_34_01_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-34 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
