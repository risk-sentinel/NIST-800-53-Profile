control 'SC-07(13)' do
  impact 0.5
  title "#{input('sc_07_13_odp')} are isolated from other internal system components by implementing physically separate subnetworks with managed interfaces to other components of the system."
  desc <<~DESC
    Isolate #{input('sc_07_13_odp')} from other internal system components by implementing physically separate subnetworks with managed interfaces to other components of the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_07_13_odp')} are isolated from other internal system components by implementing physically separate subnetworks with managed interfaces to other components of the system.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; list of security tools and support components to be isolated from other internal system components; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing the isolation of information security tools, mechanisms, and support components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physically separate subnetworks with managed interfaces are useful in isolating computer network defenses from critical operational processing networks to prevent adversaries from discovering the analysis and forensics techniques employed by organizations.
  GUIDANCE
  tag nist: ['SC-7 (13)']
  tag control: 'SC-7 (13)'
  tag objective: 'SC-07(13)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_7_13: true
  tag odp: %w{sc_07_13_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
