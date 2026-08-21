control 'SC-07(09)(a)[02]' do
  impact 0.5
  title "outgoing communications traffic posing a threat to external systems is denied;"
  desc <<~DESC
    (a) Detect and deny outgoing communications traffic posing a threat to external systems; and
    (b) Audit the identity of internal users associated with denied communications.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      outgoing communications traffic posing a threat to external systems is denied;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms implementing boundary protection capabilities; mechanisms implementing the detection and denial of threatening outgoing communications traffic; mechanisms implementing auditing of outgoing communications traffic
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Detecting outgoing communications traffic from internal actions that may pose threats to external systems is known as extrusion detection. Extrusion detection is carried out within the system at managed interfaces. Extrusion detection includes the analysis of incoming and outgoing communications traffic while searching for indications of internal threats to the security of external systems. Internal threats to external systems include traffic indicative of denial-of-service attacks, traffic with spoofed source addresses, and traffic that contains malicious code. Organizations have criteria to determine, update, and manage identified threats related to extrusion detection.
  GUIDANCE
  tag nist: ['SC-7 (9)']
  tag control: 'SC-7 (9)'
  tag objective: 'SC-07(09)(a)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_7_9: true

  describe 'NIST SP 800-53A Rev 5 objective SC-07(09)(a)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
