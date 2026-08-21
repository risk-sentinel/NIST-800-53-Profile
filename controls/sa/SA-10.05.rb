control 'SA-10(05)' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to maintain the integrity of the mapping between the master build data describing the current version of security-relevant hardware, software, and firmware and the on-site master copy of the data for the current version."
  desc <<~DESC
    Require the developer of the system, system component, or system service to maintain the integrity of the mapping between the master build data describing the current version of security-relevant hardware, software, and firmware and the on-site master copy of the data for the current version.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to maintain the integrity of the mapping between the master build data describing the current version of security-relevant hardware, software, and firmware and the on-site master copy of the data for the current version.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing system developer configuration management; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer configuration management plan; change control records; configuration management records; version control change/update records; integrity verification records between master copies of security-relevant hardware, software, and firmware (including designs and source code); system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with configuration management responsibilities; system developers
      TEST: Organizational processes for monitoring developer configuration management; mechanisms supporting and/or implementing the monitoring of developer configuration management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Mapping integrity for version control addresses changes to hardware, software, and firmware components during both initial development and system development life cycle updates. Maintaining the integrity between the master copies of security-relevant hardware, software, and firmware (including designs, hardware drawings, source code) and the equivalent data in master copies in operational environments is essential to ensuring the availability of organizational systems that support critical mission and business functions.
  GUIDANCE
  tag nist: ['SA-10 (5)']
  tag control: 'SA-10 (5)'
  tag objective: 'SA-10(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_10_5: true

  describe 'NIST SP 800-53A Rev 5 objective SA-10(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
