control 'SI-06(03)[02]' do
  impact 0.5
  title "the results of privacy function verification are reported to #{input('si_06_03_odp')}."
  desc <<~DESC
    Report the results of security and privacy function verification to #{input('si_06_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the results of privacy function verification are reported to #{input('si_06_03_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing security and privacy function verification; system design documentation; system configuration settings and associated documentation; reports of security and privacy function verification results; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy function verification responsibilities; organizational personnel who are recipients of security and privacy function verification reports; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for reporting security and privacy function verification results; mechanisms supporting and/or implementing the reporting of security and privacy function verification results
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizational personnel with potential interest in the results of the verification of security and privacy functions include systems security officers, senior agency information security officers, and senior agency officials for privacy.
  GUIDANCE
  tag nist: ['SI-6 (3)']
  tag control: 'SI-6 (3)'
  tag objective: 'SI-06(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_6_3: true
  tag odp: %w{si_06_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-06(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
