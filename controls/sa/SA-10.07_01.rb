control 'SA-10(07)[01]' do
  impact 0.5
  title "#{input('sa_10_07_odp_01')} are required to be included in the #{input('sa_10_07_odp_03')};"
  desc <<~DESC
    Require #{input('sa_10_7_prm_1')} to be included in the #{input('sa_10_7_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_10_07_odp_01')} are required to be included in the #{input('sa_10_07_odp_03')};

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; configuration management policy; configuration management plan; solicitation documentation requiring representatives for security and privacy; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer configuration management plan; change control records; configuration management records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with configuration management responsibilities; system developers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information security and privacy representatives can include system security officers, senior agency information security officers, senior agency officials for privacy, and system privacy officers. Representation by personnel with information security and privacy expertise is important because changes to system configurations can have unintended side effects, some of which may be security- or privacy-relevant. Detecting such changes early in the process can help avoid unintended, negative consequences that could ultimately affect the security and privacy posture of systems. The configuration change management and control process in this control enhancement refers to the change management and control process defined by organizations in [SA-10b](#sa-10_smt.b).
  GUIDANCE
  tag nist: ['SA-10 (7)']
  tag control: 'SA-10 (7)'
  tag objective: 'SA-10(07)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_10_7: true
  tag odp: %w{sa_10_07_odp_01 sa_10_07_odp_03 sa_10_7_prm_1 sa_10_7_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective SA-10(07)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
