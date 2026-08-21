control 'SR-02(01)' do
  impact 0.5
  title "a supply chain risk management team consisting of #{input('sr_02_01_odp_01')} is established to lead and support #{input('sr_02_01_odp_02')}."
  desc <<~DESC
    Establish a supply chain risk management team consisting of #{input('sr_02_01_odp_01')} to lead and support the following SCRM activities: #{input('sr_02_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a supply chain risk management team consisting of #{input('sr_02_01_odp_01')} is established to lead and support #{input('sr_02_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy; supply chain risk management procedures; supply chain risk management team charter documentation; supply chain risk management strategy; supply chain risk management implementation plan; procedures addressing supply chain protection; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with supply chain risk management responsibilities; organizational personnel with enterprise risk management responsibilities; legal counsel; organizational personnel with business continuity responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To implement supply chain risk management plans, organizations establish a coordinated, team-based approach to identify and assess supply chain risks and manage these risks by using programmatic and technical mitigation techniques. The team approach enables organizations to conduct an analysis of their supply chain, communicate with internal and external partners or stakeholders, and gain broad consensus regarding the appropriate resources for SCRM. The SCRM team consists of organizational personnel with diverse roles and responsibilities for leading and supporting SCRM activities, including risk executive, information technology, contracting, information security, privacy, mission or business, legal, supply chain and logistics, acquisition, business continuity, and other relevant functions. Members of the SCRM team are involved in various aspects of the SDLC and, collectively, have an awareness of and provide expertise in acquisition processes, legal practices, vulnerabilities, threats, and attack vectors, as well as an understanding of the technical aspects and dependencies of systems. The SCRM team can be an extension of the security and privacy risk management processes or be included as part of an organizational risk management team.
  GUIDANCE
  tag nist: ['SR-2 (1)']
  tag control: 'SR-2 (1)'
  tag objective: 'SR-02(01)'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_2_1: true
  tag odp: %w{sr_02_01_odp_01 sr_02_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SR-02(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
