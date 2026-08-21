control 'SC-05b.' do
  impact 0.5
  title "#{input('sc_05_odp_03')} are employed to achieve the denial-of-service protection objective."
  desc <<~DESC
    a. #{input('sc_05_odp_02')} the effects of the following types of denial-of-service events: #{input('sc_05_odp_01')} ; and
    b. Employ the following controls to achieve the denial-of-service objective: #{input('sc_05_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_05_odp_03')} are employed to achieve the denial-of-service protection objective.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing denial-of-service protection; system design documentation; list of denial-of-service attacks requiring employment of security safeguards to protect against or limit effects of such attacks; list of security safeguards protecting against or limiting the effects of denial-of-service attacks; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with incident response responsibilities; system developer
      TEST: Mechanisms protecting against or limiting the effects of denial-of-service attacks
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Denial-of-service events may occur due to a variety of internal and external causes, such as an attack by an adversary or a lack of planning to support organizational needs with respect to capacity and bandwidth. Such attacks can occur across a wide range of network protocols (e.g., IPv4, IPv6). A variety of technologies are available to limit or eliminate the origination and effects of denial-of-service events. For example, boundary protection devices can filter certain types of packets to protect system components on internal networks from being directly affected by or the source of denial-of-service attacks. Employing increased network capacity and bandwidth combined with service redundancy also reduces the susceptibility to denial-of-service events.
  GUIDANCE
  tag nist: ['SC-5']
  tag control: 'SC-5'
  tag objective: 'SC-05b.'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_5: true
  tag odp: %w{sc_05_odp_01 sc_05_odp_02 sc_05_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SC-05b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
