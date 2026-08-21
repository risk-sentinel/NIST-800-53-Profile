control 'SI-7 (15)' do
  impact 0.5
  title 'Code Authentication'
  desc <<~DESC
    Implement cryptographic mechanisms to authenticate the following software or firmware components prior to installation: #{input('si_07_15_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-07(15) cryptographic mechanisms are implemented to authenticate #{input('si_07_15_odp')} prior to installation.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; cryptographic mechanisms and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Cryptographic mechanisms authenticating software and firmware prior to installation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cryptographic authentication includes verifying that software or firmware components have been digitally signed using certificates recognized and approved by organizations. Code signing is an effective method to protect against malicious code. Organizations that employ cryptographic mechanisms also consider cryptographic key management solutions.
  GUIDANCE
  tag nist: ['SI-7 (15)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{si_07_15_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-7 (15)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
