control 'AC-18(04)[02]' do
  impact 0.5
  title "users allowed to independently configure wireless networking capabilities are explicitly authorized."
  desc <<~DESC
    Identify and explicitly authorize users allowed to independently configure wireless networking capabilities.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      users allowed to independently configure wireless networking capabilities are explicitly authorized.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing wireless implementation and usage (including restrictions); system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms authorizing independent user configuration of wireless networking capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizational authorizations to allow selected users to configure wireless networking capabilities are enforced, in part, by the access enforcement mechanisms employed within organizational systems.
  GUIDANCE
  tag nist: ['AC-18 (4)']
  tag control: 'AC-18 (4)'
  tag objective: 'AC-18(04)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ac_18_4: true

  describe 'NIST SP 800-53A Rev 5 objective AC-18(04)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
