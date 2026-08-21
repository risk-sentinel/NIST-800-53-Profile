control 'SC-8 (5)' do
  impact 0.5
  title 'Protected Distribution System'
  desc <<~DESC
    Implement #{input('sc_08_05_odp_01')} to #{input('sc_08_05_odp_02')} during transmission.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-08(05) the #{input('sc_08_05_odp_01')} is implemented to #{input('sc_08_05_odp_02')} during transmission.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing transmission confidentiality and integrity; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Cryptographic mechanisms supporting and/or implementing concealment or randomization of communication patterns; mechanisms supporting and/or implementing protected distribution systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The purpose of a protected distribution system is to deter, detect, and/or make difficult physical access to the communication lines that carry national security information.
  GUIDANCE
  tag nist: ['SC-8 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_08_05_odp_01 sc_08_05_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-8 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
