control 'SC-29' do
  impact 0.5
  title "a diverse set of information technologies is employed for #{input('sc_29_odp')} in the implementation of the system."
  desc <<~DESC
    Employ a diverse set of information technologies for the following system components in the implementation of the system: #{input('sc_29_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a diverse set of information technologies is employed for #{input('sc_29_odp')} in the implementation of the system.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; system design documentation; system configuration settings and associated documentation; list of technologies deployed in the system; acquisition documentation; acquisition contracts for system components or services; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with system acquisition, development, and implementation responsibilities
      TEST: Mechanisms supporting and/or implementing the employment of a diverse set of information technologies
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Increasing the diversity of information technologies within organizational systems reduces the impact of potential exploitations or compromises of specific technologies. Such diversity protects against common mode failures, including those failures induced by supply chain attacks. Diversity in information technologies also reduces the likelihood that the means adversaries use to compromise one system component will be effective against other system components, thus further increasing the adversary work factor to successfully complete planned attacks. An increase in diversity may add complexity and management overhead that could ultimately lead to mistakes and unauthorized configurations.
  GUIDANCE
  tag nist: ['SC-29']
  tag control: 'SC-29'
  tag objective: 'SC-29'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_29: true
  tag odp: %w{sc_29_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-29' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
