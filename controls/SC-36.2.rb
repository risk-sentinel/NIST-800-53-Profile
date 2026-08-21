control 'SC-36 (2)' do
  impact 0.5
  title 'Synchronization'
  desc <<~DESC
    Synchronize the following duplicate systems or system components: #{input('sc_36_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-36(02) #{input('sc_36_02_odp')} are synchronized.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; system design documentation; system configuration settings and associated documentation; system architecture; list of distributed processing and storage components subject to polling; system polling techniques and associated documentation or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Mechanisms supporting and/or implementing duplicate system or system component synchronization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    [SC-36](#sc-36) and [CP-9(6)](#cp-9.6) require the duplication of systems or system components in distributed locations. The synchronization of duplicated and redundant services and data helps to ensure that information contained in the distributed locations can be used in the mission or business functions of organizations, as needed.
  GUIDANCE
  tag nist: ['SC-36 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_36_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-36 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
