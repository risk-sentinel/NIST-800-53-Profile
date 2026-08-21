control 'SC-05(01)' do
  impact 0.5
  title "the ability of individuals to launch #{input('sc_05_01_odp')} against other systems is restricted."
  desc <<~DESC
    Restrict the ability of individuals to launch the following denial-of-service attacks against other systems: #{input('sc_05_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the ability of individuals to launch #{input('sc_05_01_odp')} against other systems is restricted.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing denial-of-service protection; system design documentation; list of denial-of-service attacks launched by individuals against systems; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with incident response responsibilities; system developer
      TEST: Mechanisms restricting the ability to launch denial-of-service attacks against other systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Restricting the ability of individuals to launch denial-of-service attacks requires the mechanisms commonly used for such attacks to be unavailable. Individuals of concern include hostile insiders or external adversaries who have breached or compromised the system and are using it to launch a denial-of-service attack. Organizations can restrict the ability of individuals to connect and transmit arbitrary information on the transport medium (i.e., wired networks, wireless networks, spoofed Internet protocol packets). Organizations can also limit the ability of individuals to use excessive system resources. Protection against individuals having the ability to launch denial-of-service attacks may be implemented on specific systems or boundary devices that prohibit egress to potential target systems.
  GUIDANCE
  tag nist: ['SC-5 (1)']
  tag control: 'SC-5 (1)'
  tag objective: 'SC-05(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_5_1: true
  tag odp: %w{sc_05_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-05(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
