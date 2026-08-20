control 'SC-15 (4)' do
  impact 0.5
  title 'Explicitly Indicate Current Participants'
  desc <<~DESC
    Provide an explicit indication of current participants in #{input('sc_15_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-15(04) an explicit indication of current participants in #{input('sc_15_04_odp')} is provided.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing collaborative computing; access control policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; list of types of meetings and teleconferences requiring explicit indication of current participants; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing collaborative computing devices
      TEST: Mechanisms supporting and/or implementing the capability to indicate participants on collaborative computing devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Explicitly indicating current participants prevents unauthorized individuals from participating in collaborative computing sessions without the explicit knowledge of other participants.
  GUIDANCE
  tag nist: ['SC-15 (4)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_15_04_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-15 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
