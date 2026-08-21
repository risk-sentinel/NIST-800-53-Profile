control 'SC-30 (2)' do
  impact 0.5
  title 'Randomness'
  desc <<~DESC
    Employ #{input('sc_30_02_odp')} to introduce randomness into organizational operations and assets.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-30(02) #{input('sc_30_02_odp')} are employed to introduce randomness into organizational operations and assets.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing concealment and misdirection techniques for the system; system design documentation; system configuration settings and associated documentation; system architecture; list of techniques to be employed to introduce randomness into organizational operations and assets; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with the responsibility to implement concealment and misdirection techniques for systems
      TEST: Mechanisms supporting and/or implementing randomness as a concealment and misdirection technique
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Randomness introduces increased levels of uncertainty for adversaries regarding the actions that organizations take to defend their systems against attacks. Such actions may impede the ability of adversaries to correctly target information resources of organizations that support critical missions or business functions. Uncertainty may also cause adversaries to hesitate before initiating or continuing attacks. Misdirection techniques that involve randomness include performing certain routine actions at different times of day, employing different information technologies, using different suppliers, and rotating roles and responsibilities of organizational personnel.
  GUIDANCE
  tag nist: ['SC-30 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_30_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-30 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
