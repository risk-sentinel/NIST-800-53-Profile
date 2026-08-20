control 'SI-8 (2)' do
  impact 0.5
  title 'Automatic Updates'
  desc <<~DESC
    Automatically update spam protection mechanisms #{input('si_08_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-08(02) spam protection mechanisms are automatically updated #{input('si_08_02_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing spam protection; spam protection mechanisms; records of spam protection updates; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for spam protection; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational processes for spam protection; mechanisms supporting and/or implementing automatic updates to spam protection mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Using automated mechanisms to update spam protection mechanisms helps to ensure that updates occur on a regular basis and provide the latest content and protection capabilities.
  GUIDANCE
  tag nist: ['SI-8 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{si_08_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-8 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
