control 'IR-06a.' do
  impact 0.5
  title "personnel is/are required to report suspected incidents to the organizational incident response capability within #{input('ir_06_odp_01')};"
  desc <<~DESC
    a. Require personnel to report suspected incidents to the organizational incident response capability within #{input('ir_06_odp_01')} ; and
    b. Report incident information to #{input('ir_06_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personnel is/are required to report suspected incidents to the organizational incident response capability within #{input('ir_06_odp_01')};

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident reporting; incident reporting records and documentation; incident response plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident reporting responsibilities; organizational personnel with information security and privacy responsibilities; personnel who have/should have reported incidents; personnel (authorities) to whom incident information is to be reported; system users
      TEST: Organizational processes for incident reporting; mechanisms supporting and/or implementing incident reporting
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The types of incidents reported, the content and timeliness of the reports, and the designated reporting authorities reflect applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Incident information can inform risk assessments, control effectiveness assessments, security requirements for acquisitions, and selection criteria for technology products.
  GUIDANCE
  tag nist: ['IR-6']
  tag control: 'IR-6'
  tag objective: 'IR-06a.'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ir_6: true
  tag odp: %w{ir_06_odp_01 ir_06_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IR-06a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
