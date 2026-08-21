control 'SI-03(06)(a)' do
  impact 0.5
  title "malicious code protection mechanisms are tested #{input('si_03_06_odp')} by introducing known benign code into the system;"
  desc <<~DESC
    (a) Test malicious code protection mechanisms #{input('si_03_06_odp')} by introducing known benign code into the system; and
    (b) Verify that the detection of the code and the associated incident reporting occur.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      malicious code protection mechanisms are tested #{input('si_03_06_odp')} by introducing known benign code into the system;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing malicious code protection; system design documentation; system configuration settings and associated documentation; test cases; records providing evidence of test cases executed on malicious code protection mechanisms; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for malicious code protection
      TEST: Mechanisms supporting and/or implementing the testing and verification of malicious code protection capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SI-3 (6)']
  tag control: 'SI-3 (6)'
  tag objective: 'SI-03(06)(a)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_3_6: true
  tag odp: %w{si_03_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-03(06)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
