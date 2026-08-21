control 'SA-21' do
  impact 0.5
  title 'Developer Screening'
  desc <<~DESC
    Require that the developer of #{input('sa_21_odp_01')}:
      a. Has appropriate access authorizations as determined by assigned #{input('sa_21_odp_02')} ; and
      b. Satisfies the following additional personnel screening criteria: #{input('sa_21_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-21a. the developer of #{input('sa_21_odp_01')} is required to have appropriate access authorizations as determined by assigned #{input('sa_21_odp_02')};
      SA-21b. the developer of #{input('sa_21_odp_01')} is required to satisfy #{input('sa_21_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; personnel security policy and procedures; procedures addressing personnel screening; system design documentation; acquisition documentation; service level agreements; acquisition contracts for developer services; system configuration settings and associated documentation; list of appropriate access authorizations required by the developers of the system; personnel screening criteria and associated documentation; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel responsible for developer screening
      TEST: Organizational processes for developer screening; mechanisms supporting developer screening
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Developer screening is directed at external developers. Internal developer screening is addressed by [PS-3](#ps-3) . Because the system, system component, or system service may be used in critical activities essential to the national or economic security interests of the United States, organizations have a strong interest in ensuring that developers are trustworthy. The degree of trust required of developers may need to be consistent with that of the individuals who access the systems, system components, or system services once deployed. Authorization and personnel screening criteria include clearances, background checks, citizenship, and nationality. Developer trustworthiness may also include a review and analysis of company ownership and relationships that the company has with entities that may potentially affect the quality and reliability of the systems, components, or services being developed. Satisfying the required access authorizations and personnel screening criteria includes providing a list of all individuals who are authorized to perform development activities on the selected system, system component, or system service so that organizations can validate that the developer has satisfied the authorization and screening requirements.
  GUIDANCE
  tag nist: ['SA-21']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{sa_21_odp_01 sa_21_odp_02 sa_21_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SA-21' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
