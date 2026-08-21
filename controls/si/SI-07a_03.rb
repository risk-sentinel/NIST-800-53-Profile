control 'SI-07a.[03]' do
  impact 0.5
  title "integrity verification tools are employed to detect unauthorized changes to #{input('si_07_odp_03')};"
  desc <<~DESC
    a. Employ integrity verification tools to detect unauthorized changes to the following software, firmware, and information: #{input('si_7_prm_1')} ; and
    b. Take the following actions when unauthorized changes to the software, firmware, and information are detected: #{input('si_7_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      integrity verification tools are employed to detect unauthorized changes to #{input('si_07_odp_03')};

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; personally identifiable information processing policy; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; records generated or triggered by integrity verification tools regarding unauthorized software, firmware, and information changes; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Software, firmware, and information integrity verification tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Unauthorized changes to software, firmware, and information can occur due to errors or malicious activity. Software includes operating systems (with key internal components, such as kernels or drivers), middleware, and applications. Firmware interfaces include Unified Extensible Firmware Interface (UEFI) and Basic Input/Output System (BIOS). Information includes personally identifiable information and metadata that contains security and privacy attributes associated with information. Integrity-checking mechanisms—including parity checks, cyclical redundancy checks, cryptographic hashes, and associated tools—can automatically monitor the integrity of systems and hosted applications.
  GUIDANCE
  tag nist: ['SI-7']
  tag control: 'SI-7'
  tag objective: 'SI-07a.[03]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_si_7: true
  tag odp: %w{si_07_odp_03 si_7_prm_1 si_7_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective SI-07a.[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
