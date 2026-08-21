control 'SI-7 (5)' do
  impact 0.5
  title 'Automated Response to Integrity Violations'
  desc <<~DESC
    Automatically #{input('si_07_05_odp_01')} when integrity violations are discovered.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-07(05) #{input('si_07_05_odp_01')} are automatically performed when integrity violations are discovered.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; records of integrity scans; records of integrity checks and responses to integrity violations; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Software, firmware, and information integrity verification tools; mechanisms providing an automated response to integrity violations; mechanisms supporting and/or implementing security safeguards to be implemented when integrity violations are discovered
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may define different integrity-checking responses by type of information, specific information, or a combination of both. Types of information include firmware, software, and user data. Specific information includes boot firmware for certain types of machines. The automatic implementation of controls within organizational systems includes reversing the changes, halting the system, or triggering audit alerts when unauthorized modifications to critical security files occur.
  GUIDANCE
  tag nist: ['SI-7 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{si_07_05_odp_01}

  describe 'NIST SP 800-53 Rev 5 control SI-7 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
