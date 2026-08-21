control 'SC-28 (2)' do
  impact 0.5
  title 'Offline Storage'
  desc <<~DESC
    Remove the following information from online storage and store offline in a secure location: #{input('sc_28_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-28(02)[01] #{input('sc_28_02_odp')} is removed from online storage;
      SC-28(02)[02] #{input('sc_28_02_odp')} is stored offline in a secure location.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the protection of information at rest; system design documentation; system configuration settings and associated documentation; cryptographic mechanisms and associated configuration documentation; offline storage locations for information at rest; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the removal of information from online storage; mechanisms supporting and/or implementing storage of information offline
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Removing organizational information from online storage to offline storage eliminates the possibility of individuals gaining unauthorized access to the information through a network. Therefore, organizations may choose to move information to offline storage in lieu of protecting such information in online storage.
  GUIDANCE
  tag nist: ['SC-28 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_28_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-28 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
