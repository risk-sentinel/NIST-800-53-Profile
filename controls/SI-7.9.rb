control 'SI-7 (9)' do
  impact 0.5
  title 'Verify Boot Process'
  desc <<~DESC
    Verify the integrity of the boot process of the following system components: #{input('si_07_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-07(09) the integrity of the boot process of #{input('si_07_09_odp')} is verified.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; documentation; records of integrity verification scans; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system developer
      TEST: Software, firmware, and information integrity verification tools; mechanisms supporting and/or implementing integrity verification of the boot process
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Ensuring the integrity of boot processes is critical to starting system components in known, trustworthy states. Integrity verification mechanisms provide a level of assurance that only trusted code is executed during boot processes.
  GUIDANCE
  tag nist: ['SI-7 (9)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_07_09_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-7 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
