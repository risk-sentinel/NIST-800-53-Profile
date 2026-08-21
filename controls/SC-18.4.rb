control 'SC-18 (4)' do
  impact 0.5
  title 'Prevent Automatic Execution'
  desc <<~DESC
    Prevent the automatic execution of mobile code in #{input('sc_18_04_odp_01')} and enforce #{input('sc_18_04_odp_02')} prior to executing the code.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-18(04)[01] the automatic execution of mobile code in #{input('sc_18_04_odp_01')} is prevented;
      SC-18(04)[02] #{input('sc_18_04_odp_02')} are enforced prior to executing mobile code.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing mobile code; mobile code usage restrictions; mobile code implementation policy and procedures; system design documentation; system configuration settings and associated documentation; list of software applications in which the automatic execution of mobile code must be prohibited; list of actions required before execution of mobile code; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with responsibilities for managing mobile code
      TEST: Mechanisms preventing the automatic execution of unacceptable mobile code; mechanisms enforcing actions to be taken prior to the execution of the mobile code
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Actions enforced before executing mobile code include prompting users prior to opening email attachments or clicking on web links. Preventing the automatic execution of mobile code includes disabling auto-execute features on system components that employ portable storage devices, such as compact discs, digital versatile discs, and universal serial bus devices.
  GUIDANCE
  tag nist: ['SC-18 (4)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_18_04_odp_01 sc_18_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-18 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
