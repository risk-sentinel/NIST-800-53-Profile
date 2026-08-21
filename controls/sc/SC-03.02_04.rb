control 'SC-03(02)[04]' do
  impact 0.5
  title "security functions enforcing information flow control are isolated from other security functions."
  desc <<~DESC
    Isolate security functions enforcing access and information flow control from nonsecurity functions and from other security functions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security functions enforcing information flow control are isolated from other security functions.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing security function isolation; list of critical security functions; system design documentation; system configuration settings and associated documentation; system audit records system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Isolation of security functions enforcing access and information flow control
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security function isolation occurs because of implementation. The functions can still be scanned and monitored. Security functions that are potentially isolated from access and flow control enforcement functions include auditing, intrusion detection, and malicious code protection functions.
  GUIDANCE
  tag nist: ['SC-3 (2)']
  tag control: 'SC-3 (2)'
  tag objective: 'SC-03(02)[04]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_3_2: true

  describe 'NIST SP 800-53A Rev 5 objective SC-03(02)[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
