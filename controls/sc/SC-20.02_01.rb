control 'SC-20(02)[01]' do
  impact 0.5
  title "data origin artifacts are provided for internal name/address resolution queries;"
  desc <<~DESC
    Provide data origin and integrity protection artifacts for internal name/address resolution queries.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      data origin artifacts are provided for internal name/address resolution queries;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing secure name/address resolution services (authoritative source); system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing DNS
      TEST: Mechanisms supporting and/or implementing data origin and integrity protection for internal name/address resolution service queries
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SC-20 (2)']
  tag control: 'SC-20 (2)'
  tag objective: 'SC-20(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_20_2: true

  describe 'NIST SP 800-53A Rev 5 objective SC-20(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
