control 'SI-4 (20)' do
  impact 0.5
  title 'Privileged Users'
  desc <<~DESC
    Implement the following additional monitoring of privileged users: #{input('si_04_20_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-04(20) #{input('si_04_20_odp')} of privileged users is implemented.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system monitoring logs or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system
      TEST: Organizational processes for system monitoring; mechanisms supporting and/or implementing a system monitoring capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Privileged users have access to more sensitive information, including security-related information, than the general user population. Access to such information means that privileged users can potentially do greater damage to systems and organizations than non-privileged users. Therefore, implementing additional monitoring on privileged users helps to ensure that organizations can identify malicious activity at the earliest possible time and take appropriate actions.
  GUIDANCE
  tag nist: ['SI-4 (20)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{si_04_20_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-4 (20)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
