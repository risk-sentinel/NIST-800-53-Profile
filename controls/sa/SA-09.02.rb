control 'SA-09(02)' do
  impact 0.5
  title "providers of #{input('sa_09_02_odp')} are required to identify the functions, ports, protocols, and other services required for the use of such services."
  desc <<~DESC
    Require providers of the following external system services to identify the functions, ports, protocols, and other services required for the use of such services: #{input('sa_09_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      providers of #{input('sa_09_02_odp')} are required to identify the functions, ports, protocols, and other services required for the use of such services.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; supply chain risk management policy and procedures; procedures addressing external system services; acquisition contracts for the system, system component, or system service; acquisition documentation; solicitation documentation; service level agreements; organizational security requirements and security specifications for external service providers; list of required functions, ports, protocols, and other services; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system/network administrators; external providers of system services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information from external service providers regarding the specific functions, ports, protocols, and services used in the provision of such services can be useful when the need arises to understand the trade-offs involved in restricting certain functions and services or blocking certain ports and protocols.
  GUIDANCE
  tag nist: ['SA-9 (2)']
  tag control: 'SA-9 (2)'
  tag objective: 'SA-09(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sa_9_2: true
  tag odp: %w{sa_09_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-09(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
