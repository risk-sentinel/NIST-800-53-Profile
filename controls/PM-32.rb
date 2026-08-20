control 'PM-32' do
  impact 0.5
  title 'Purposing'
  desc <<~DESC
    Analyze #{input('pm_32_odp')} supporting mission essential services or functions to ensure that the information resources are being used consistent with their intended purpose.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-32 #{input('pm_32_odp')} supporting mission-essential services or functions are analyzed to ensure that the information resources are being used in a manner that is consistent with their intended purpose.

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; list of essential services and functions; organizational analysis of information resources; risk management strategy; other relevant documents or records.
      INTERVIEW: Organizational personnel with information security, privacy, and supply chain risk management program responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Systems are designed to support a specific mission or business function. However, over time, systems and system components may be used to support services and functions that are outside of the scope of the intended mission or business functions. This can result in exposing information resources to unintended environments and uses that can significantly increase threat exposure. In doing so, the systems are more vulnerable to compromise, which can ultimately impact the services and functions for which they were intended. This is especially impactful for mission-essential services and functions. By analyzing resource use, organizations can identify such potential exposures.
  GUIDANCE
  tag nist: ['PM-32']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag odp: %w{pm_32_odp}

  describe 'NIST SP 800-53 Rev 5 control PM-32' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
