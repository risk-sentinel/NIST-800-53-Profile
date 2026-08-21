control 'SC-07(24)(c)' do
  impact 0.5
  title "each processing exception is documented for systems that process personally identifiable information;"
  desc <<~DESC
    For systems that process personally identifiable information:
      (a) Apply the following processing rules to data elements of personally identifiable information: #{input('sc_07_24_odp')};
      (b) Monitor for permitted processing at the external interfaces to the system and at key internal boundaries within the system;
      (c) Document each processing exception; and
      (d) Review and remove exceptions that are no longer supported.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      each processing exception is documented for systems that process personally identifiable information;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; personally identifiable information processing policies; list of key internal boundaries of the system; system design documentation; system configuration settings and associated documentation; enterprise security and privacy architecture documentation; system audit records; system security plan; privacy plan; personally identifiable information inventory documentation; data mapping documentation; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms implementing boundary protection capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Managing the processing of personally identifiable information is an important aspect of protecting an individual’s privacy. Applying, monitoring for, and documenting exceptions to processing rules ensure that personally identifiable information is processed only in accordance with established privacy requirements.
  GUIDANCE
  tag nist: ['SC-7 (24)']
  tag control: 'SC-7 (24)'
  tag objective: 'SC-07(24)(c)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_sc_7_24: true
  tag odp: %w{sc_07_24_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(24)(c)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
