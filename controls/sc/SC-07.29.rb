control 'SC-07(29)' do
  impact 0.5
  title "subnetworks are separated #{input('sc_07_29_odp_01')} to isolate #{input('sc_07_29_odp_02')}."
  desc <<~DESC
    Implement #{input('sc_07_29_odp_01')} separate subnetworks to isolate the following critical system components and functions: #{input('sc_07_29_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      subnetworks are separated #{input('sc_07_29_odp_01')} to isolate #{input('sc_07_29_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; criticality analysis; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms separating critical system components and functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Separating critical system components and functions from other noncritical system components and functions through separate subnetworks may be necessary to reduce susceptibility to a catastrophic or debilitating breach or compromise that results in system failure. For example, physically separating the command and control function from the in-flight entertainment function through separate subnetworks in a commercial aircraft provides an increased level of assurance in the trustworthiness of critical system functions.
  GUIDANCE
  tag nist: ['SC-7 (29)']
  tag control: 'SC-7 (29)'
  tag objective: 'SC-07(29)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_7_29: true
  tag odp: %w{sc_07_29_odp_01 sc_07_29_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(29)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
