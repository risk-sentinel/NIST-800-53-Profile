control 'SI-07(06)[01]' do
  impact 0.5
  title "cryptographic mechanisms are implemented to detect unauthorized changes to software;"
  desc <<~DESC
    Implement cryptographic mechanisms to detect unauthorized changes to software, firmware, and information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms are implemented to detect unauthorized changes to software;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; cryptographic mechanisms and associated documentation; records of detected unauthorized changes to software, firmware, and information; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Software, firmware, and information integrity verification tools; cryptographic mechanisms implementing software, firmware, and information integrity
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cryptographic mechanisms used to protect integrity include digital signatures and the computation and application of signed hashes using asymmetric cryptography, protecting the confidentiality of the key used to generate the hash, and using the public key to verify the hash information. Organizations that employ cryptographic mechanisms also consider cryptographic key management solutions.
  GUIDANCE
  tag nist: ['SI-7 (6)']
  tag control: 'SI-7 (6)'
  tag objective: 'SI-07(06)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_7_6: true

  describe 'NIST SP 800-53A Rev 5 objective SI-07(06)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
