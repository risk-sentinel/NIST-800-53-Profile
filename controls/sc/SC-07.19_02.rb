control 'SC-07(19)[02]' do
  impact 0.5
  title "outbound communications traffic is blocked between #{input('sc_07_19_odp')} that are independently configured by end users and external service providers."
  desc <<~DESC
    Block inbound and outbound communications traffic between #{input('sc_07_19_odp')} that are independently configured by end users and external service providers.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      outbound communications traffic is blocked between #{input('sc_07_19_odp')} that are independently configured by end users and external service providers.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; list of communication clients independently configured by end users and external service providers; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing the blocking of inbound and outbound communications traffic between communication clients independently configured by end users and external service providers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Communication clients independently configured by end users and external service providers include instant messaging clients and video conferencing software and applications. Traffic blocking does not apply to communication clients that are configured by organizations to perform authorized functions.
  GUIDANCE
  tag nist: ['SC-7 (19)']
  tag control: 'SC-7 (19)'
  tag objective: 'SC-07(19)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_7_19: true
  tag odp: %w{sc_07_19_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(19)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
