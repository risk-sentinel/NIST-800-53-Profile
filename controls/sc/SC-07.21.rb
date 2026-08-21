control 'SC-07(21)' do
  impact 0.5
  title "boundary protection mechanisms are employed to isolate #{input('sc_07_21_odp_01')} supporting #{input('sc_07_21_odp_02')}."
  desc <<~DESC
    Employ boundary protection mechanisms to isolate #{input('sc_07_21_odp_01')} supporting #{input('sc_07_21_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      boundary protection mechanisms are employed to isolate #{input('sc_07_21_odp_01')} supporting #{input('sc_07_21_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; enterprise architecture documentation; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing the capability to separate system components supporting organizational missions and/or business functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can isolate system components that perform different mission or business functions. Such isolation limits unauthorized information flows among system components and provides the opportunity to deploy greater levels of protection for selected system components. Isolating system components with boundary protection mechanisms provides the capability for increased protection of individual system components and to more effectively control information flows between those components. Isolating system components provides enhanced protection that limits the potential harm from hostile cyber-attacks and errors. The degree of isolation varies depending upon the mechanisms chosen. Boundary protection mechanisms include routers, gateways, and firewalls that separate system components into physically separate networks or subnetworks; cross-domain devices that separate subnetworks; virtualization techniques; and the encryption of information flows among system components using distinct encryption keys.
  GUIDANCE
  tag nist: ['SC-7 (21)']
  tag control: 'SC-7 (21)'
  tag objective: 'SC-07(21)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_sc_7_21: true
  tag odp: %w{sc_07_21_odp_01 sc_07_21_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(21)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
