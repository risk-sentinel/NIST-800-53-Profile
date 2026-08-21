control 'AU-14(03)[01]' do
  impact 0.5
  title "the capability for authorized users to remotely view and hear content related to an established user session in real time is provided;"
  desc <<~DESC
    Provide and implement the capability for authorized users to remotely view and hear content related to an established user session in real time.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the capability for authorized users to remotely view and hear content related to an established user session in real time is provided;

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing user session auditing; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system/network administrators; system developers; legal counsel; personnel with civil liberties responsibilities
      TEST: Mechanisms implementing user session auditing capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['AU-14 (3)']
  tag control: 'AU-14 (3)'
  tag objective: 'AU-14(03)[01]'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_14_3: true

  describe 'NIST SP 800-53A Rev 5 objective AU-14(03)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
