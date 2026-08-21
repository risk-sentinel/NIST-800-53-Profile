control 'MA-03(02)' do
  impact 0.5
  title "media containing diagnostic and test programs are checked for malicious code before the media are used in the system."
  desc <<~DESC
    Check media containing diagnostic and test programs for malicious code before the media are used in the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      media containing diagnostic and test programs are checked for malicious code before the media are used in the system.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance tools; system maintenance tools and associated documentation; maintenance records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational process for inspecting media for malicious code; mechanisms supporting and/or implementing the inspection of media used for maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    If, upon inspection of media containing maintenance, diagnostic, and test programs, organizations determine that the media contains malicious code, the incident is handled consistent with organizational incident handling policies and procedures.
  GUIDANCE
  tag nist: ['MA-3 (2)']
  tag control: 'MA-3 (2)'
  tag objective: 'MA-03(02)'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ma_3_2: true

  describe 'NIST SP 800-53A Rev 5 objective MA-03(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
