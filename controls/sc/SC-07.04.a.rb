control 'SC-07(04)(a)' do
  impact 0.5
  title "a managed interface is implemented for each external telecommunication service;"
  desc <<~DESC
    (a) Implement a managed interface for each external telecommunication service;
    (b) Establish a traffic flow policy for each managed interface;
    (c) Protect the confidentiality and integrity of the information being transmitted across each interface;
    (d) Document each exception to the traffic flow policy with a supporting mission or business need and duration of that need;
    (e) Review exceptions to the traffic flow policy #{input('sc_07_04_odp')} and remove exceptions that are no longer supported by an explicit mission or business need;
    (f) Prevent unauthorized exchange of control plane traffic with external networks;
    (g) Publish information to enable remote networks to detect unauthorized control plane traffic from internal networks; and
    (h) Filter unauthorized control plane traffic from external networks.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a managed interface is implemented for each external telecommunication service;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; traffic flow policy; information flow control policy; procedures addressing boundary protection; system security architecture; system design documentation; boundary protection hardware and software; system architecture and configuration documentation; system configuration settings and associated documentation; records of traffic flow policy exceptions; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Organizational processes for documenting and reviewing exceptions to the traffic flow policy; organizational processes for removing exceptions to the traffic flow policy; mechanisms implementing boundary protection capabilities; managed interfaces implementing traffic flow policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    External telecommunications services can provide data and/or voice communications services. Examples of control plane traffic include Border Gateway Protocol (BGP) routing, Domain Name System (DNS), and management protocols. See [SP 800-189](#f5edfe51-d1f2-422e-9b27-5d0e90b49c72) for additional information on the use of the resource public key infrastructure (RPKI) to protect BGP routes and detect unauthorized BGP announcements.
  GUIDANCE
  tag nist: ['SC-7 (4)']
  tag control: 'SC-7 (4)'
  tag objective: 'SC-07(04)(a)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_7_4: true
  tag odp: %w{sc_07_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(04)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
