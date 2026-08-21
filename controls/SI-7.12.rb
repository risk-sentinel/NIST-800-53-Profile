control 'SI-7 (12)' do
  impact 0.5
  title 'Integrity Verification'
  desc <<~DESC
    Require that the integrity of the following user-installed software be verified prior to execution: #{input('si_07_12_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-07(12) the integrity of #{input('si_07_12_odp')} is verified prior to execution.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; integrity verification records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities
      TEST: Software, firmware, and information integrity verification tools; mechanisms supporting and/or implementing verification of the integrity of user-installed software prior to execution
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations verify the integrity of user-installed software prior to execution to reduce the likelihood of executing malicious code or programs that contains errors from unauthorized modifications. Organizations consider the source of the software, ensuring the software and updates come from authorized sources and/or sites, and the practicality of approaches to verifying software integrity, including the availability of trustworthy checksums from software developers and vendors.
  GUIDANCE
  tag nist: ['SI-7 (12)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_07_12_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-7 (12)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
