control 'PM-27a.02[02]' do
  impact 0.5
  title "the privacy reports are disseminated to other personnel responsible for monitoring privacy program compliance;"
  desc <<~DESC
    a. Develop #{input('pm_27_odp_01')} and disseminate to:
      1. #{input('pm_27_odp_02')} to demonstrate accountability with statutory, regulatory, and policy privacy mandates; and
      2. #{input('pm_27_odp_03')} and other personnel with responsibility for monitoring privacy program compliance; and
    b. Review and update privacy reports #{input('pm_27_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the privacy reports are disseminated to other personnel responsible for monitoring privacy program compliance;

    Assessment methods and objects:
      EXAMINE: Privacy program plan; internal and external privacy reports; privacy program plan; annual senior agency official for privacy reports to OMB; reports to Congress required by law, regulation, or policy, including internal policies; records documenting the dissemination of reports to oversight bodies and officials responsible for monitoring privacy program compliance; records of review and updates of privacy reports.
      INTERVIEW: Organizational personnel with privacy program responsibilities; organizational personnel with privacy responsibilities; legal counsel.
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Through internal and external reporting, organizations promote accountability and transparency in organizational privacy operations. Reporting can also help organizations to determine progress in meeting privacy compliance requirements and privacy controls, compare performance across the federal government, discover vulnerabilities, identify gaps in policy and implementation, and identify models for success. For federal agencies, privacy reports include annual senior agency official for privacy reports to OMB, reports to Congress required by Implementing Regulations of the 9/11 Commission Act, and other public reports required by law, regulation, or policy, including internal policies of organizations. The senior agency official for privacy consults with legal counsel, where appropriate, to ensure that organizations meet all applicable privacy reporting requirements.
  GUIDANCE
  tag nist: ['PM-27']
  tag control: 'PM-27'
  tag objective: 'PM-27a.02[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_27: true
  tag odp: %w{pm_27_odp_01 pm_27_odp_02 pm_27_odp_03 pm_27_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective PM-27a.02[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
