control 'AT-04a.[01]' do
  impact 0.5
  title "information security and privacy training activities, including security and privacy awareness training and specific role-based security and privacy training, are documented;"
  desc <<~DESC
    a. Document and monitor information security and privacy training activities, including security and privacy awareness training and specific role-based security and privacy training; and
    b. Retain individual training records for #{input('at_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information security and privacy training activities, including security and privacy awareness training and specific role-based security and privacy training, are documented;

    Assessment methods and objects:
      EXAMINE: Security and privacy awareness and training policy; procedures addressing security and privacy training records; security and privacy awareness and training records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy training record retention responsibilities
      TEST: Mechanisms supporting the management of security and privacy training records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Documentation for specialized training may be maintained by individual supervisors at the discretion of the organization. The National Archives and Records Administration provides guidance on records retention for federal agencies.
  GUIDANCE
  tag nist: ['AT-4']
  tag control: 'AT-4'
  tag objective: 'AT-04a.[01]'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_at_4: true
  tag odp: %w{at_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective AT-04a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
