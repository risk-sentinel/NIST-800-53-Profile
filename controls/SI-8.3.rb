control 'SI-8 (3)' do
  impact 0.5
  title 'Continuous Learning Capability'
  desc <<~DESC
    Implement spam protection mechanisms with a learning capability to more effectively identify legitimate communications traffic.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-08(03) spam protection mechanisms with a learning capability are implemented to more effectively identify legitimate communications traffic.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing spam protection; spam protection mechanisms; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for spam protection; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational processes for spam protection; mechanisms supporting and/or implementing spam protection mechanisms with a learning capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Learning mechanisms include Bayesian filters that respond to user inputs that identify specific traffic as spam or legitimate by updating algorithm parameters and thereby more accurately separating types of traffic.
  GUIDANCE
  tag nist: ['SI-8 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-8 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
