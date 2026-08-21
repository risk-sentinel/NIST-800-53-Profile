control 'PM-30a.[04]' do
  impact 0.5
  title "the supply chain risk management strategy addresses risks associated with the development of system services;"
  desc <<~DESC
    a. Develop an organization-wide strategy for managing supply chain risks associated with the development, acquisition, maintenance, and disposal of systems, system components, and system services;
    b. Implement the supply chain risk management strategy consistently across the organization; and
    c. Review and update the supply chain risk management strategy on #{input('pm_30_odp')} or as required, to address organizational changes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the supply chain risk management strategy addresses risks associated with the development of system services;

    Assessment methods and objects:
      EXAMINE: Supply chain risk management strategy; organizational risk management strategy; enterprise risk management documents; other relevant documents or records
      INTERVIEW: Organizational personnel with supply chain risk management responsibilities; organizational personnel with information security responsibilities; organizational personnel with acquisition responsibilities; organizational personnel with enterprise risk management responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An organization-wide supply chain risk management strategy includes an unambiguous expression of the supply chain risk appetite and tolerance for the organization, acceptable supply chain risk mitigation strategies or controls, a process for consistently evaluating and monitoring supply chain risk, approaches for implementing and communicating the supply chain risk management strategy, and the associated roles and responsibilities. Supply chain risk management includes considerations of the security and privacy risks associated with the development, acquisition, maintenance, and disposal of systems, system components, and system services. The supply chain risk management strategy can be incorporated into the organization’s overarching risk management strategy and can guide and inform supply chain policies and system-level supply chain risk management plans. In addition, the use of a risk executive function can facilitate a consistent, organization-wide application of the supply chain risk management strategy. The supply chain risk management strategy is implemented at the organization and mission/business levels, whereas the supply chain risk management plan (see [SR-2](#sr-2) ) is implemented at the system level.
  GUIDANCE
  tag nist: ['PM-30']
  tag control: 'PM-30'
  tag objective: 'PM-30a.[04]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag control_pm_30: true
  tag odp: %w{pm_30_odp}

  describe 'NIST SP 800-53A Rev 5 objective PM-30a.[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
