control 'PM-7 (1)' do
  impact 0.5
  title 'Offloading'
  desc <<~DESC
    Offload #{input('pm_07_01_odp')} to other systems, system components, or an external provider.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-07(01) #{input('pm_07_01_odp')} are offloaded to other systems, system components, or an external provider.

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; enterprise architecture documentation; procedures addressing enterprise architecture development; procedures for identifying and offloading functions or services; results of risk assessments of enterprise architecture; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for developing enterprise architecture; organizational personnel responsible for risk assessments of enterprise architecture; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for enterprise architecture development; mechanisms supporting the enterprise architecture and its development; mechanisms for offloading functions and services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Not every function or service that a system provides is essential to organizational mission or business functions. Printing or copying is an example of a non-essential but supporting service for an organization. Whenever feasible, such supportive but non-essential functions or services are not co-located with the functions or services that support essential mission or business functions. Maintaining such functions on the same system or system component increases the attack surface of the organization’s mission-essential functions or services. Moving supportive but non-essential functions to a non-critical system, system component, or external provider can also increase efficiency by putting those functions or services under the control of individuals or providers who are subject matter experts in the functions or services.
  GUIDANCE
  tag nist: ['PM-7 (1)']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag odp: %w{pm_07_01_odp}

  describe 'NIST SP 800-53 Rev 5 control PM-7 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
