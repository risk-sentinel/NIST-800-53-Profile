control 'SI-07(03)' do
  impact 0.5
  title "centrally managed integrity verification tools are employed."
  desc <<~DESC
    Employ centrally managed integrity verification tools.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      centrally managed integrity verification tools are employed.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; records of integrity scans; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for the central management of integrity verification tools; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the central management of integrity verification tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Centrally managed integrity verification tools provides greater consistency in the application of such tools and can facilitate more comprehensive coverage of integrity verification actions.
  GUIDANCE
  tag nist: ['SI-7 (3)']
  tag control: 'SI-7 (3)'
  tag objective: 'SI-07(03)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_7_3: true

  describe 'NIST SP 800-53A Rev 5 objective SI-07(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
