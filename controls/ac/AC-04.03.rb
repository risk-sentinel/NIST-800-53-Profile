control 'AC-04(03)' do
  impact 0.5
  title "#{input('ac_04_03_odp')} are enforced."
  desc <<~DESC
    Enforce #{input('ac_04_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_04_03_odp')} are enforced.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system security architecture and associated documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizational policies regarding dynamic information flow control include allowing or disallowing information flows based on changing conditions or mission or operational considerations. Changing conditions include changes in risk tolerance due to changes in the immediacy of mission or business needs, changes in the threat environment, and detection of potentially harmful or adverse events.
  GUIDANCE
  tag nist: ['AC-4 (3)']
  tag control: 'AC-4 (3)'
  tag objective: 'AC-04(03)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_3: true
  tag odp: %w{ac_04_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
