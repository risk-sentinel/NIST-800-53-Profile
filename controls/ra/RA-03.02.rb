control 'RA-03(02)' do
  impact 0.5
  title "all-source intelligence is used to assist in the analysis of risk."
  desc <<~DESC
    Use all-source intelligence to assist in the analysis of risk.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      all-source intelligence is used to assist in the analysis of risk.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; security planning policy and procedures; procedures addressing organizational assessments of risk; risk assessment; risk assessment results; risk assessment reviews; risk assessment updates; risk intelligence reports; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with risk assessment responsibilities; organizational personnel with security responsibilities
      TEST: Organizational processes for risk assessment; mechanisms supporting and/or conducting, documenting, reviewing, disseminating, and updating the risk assessment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations employ all-source intelligence to inform engineering, acquisition, and risk management decisions. All-source intelligence consists of information derived from all available sources, including publicly available or open-source information, measurement and signature intelligence, human intelligence, signals intelligence, and imagery intelligence. All-source intelligence is used to analyze the risk of vulnerabilities (both intentional and unintentional) from development, manufacturing, and delivery processes, people, and the environment. The risk analysis may be performed on suppliers at multiple tiers in the supply chain sufficient to manage risks. Organizations may develop agreements to share all-source intelligence information or resulting decisions with other organizations, as appropriate.
  GUIDANCE
  tag nist: ['RA-3 (2)']
  tag control: 'RA-3 (2)'
  tag objective: 'RA-03(02)'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag control_ra_3_2: true

  describe 'NIST SP 800-53A Rev 5 objective RA-03(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
