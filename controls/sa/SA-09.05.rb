control 'SA-09(05)' do
  impact 0.5
  title "based on #{input('sa_09_05_odp_03')}, #{input('sa_09_05_odp_01')} is/are restricted to #{input('sa_09_05_odp_02')}."
  desc <<~DESC
    Restrict the location of #{input('sa_09_05_odp_01')} to #{input('sa_09_05_odp_02')} based on #{input('sa_09_05_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      based on #{input('sa_09_05_odp_03')}, #{input('sa_09_05_odp_01')} is/are restricted to #{input('sa_09_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing external system services; acquisition contracts for the system, system component, or system service; solicitation documentation; acquisition documentation; service level agreements; restricted locations for information processing; information/data and/or system services; information processing, information/data, and/or system services to be maintained in restricted locations; organizational security requirements or conditions for external providers; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; external providers of system services; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining the requirements to restrict locations of information processing, information/data, or information services; organizational processes for ensuring the location is restricted in accordance with requirements or conditions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The location of information processing, information and data storage, or system services can have a direct impact on the ability of organizations to successfully execute their mission and business functions. The impact occurs when external providers control the location of processing, storage, or services. The criteria that external providers use for the selection of processing, storage, or service locations may be different from the criteria that organizations use. For example, organizations may desire that data or information storage locations be restricted to certain locations to help facilitate incident response activities in case of information security incidents or breaches. Incident response activities, including forensic analyses and after-the-fact investigations, may be adversely affected by the governing laws, policies, or protocols in the locations where processing and storage occur and/or the locations from which system services emanate.
  GUIDANCE
  tag nist: ['SA-9 (5)']
  tag control: 'SA-9 (5)'
  tag objective: 'SA-09(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_9_5: true
  tag odp: %w{sa_09_05_odp_01 sa_09_05_odp_02 sa_09_05_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SA-09(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
