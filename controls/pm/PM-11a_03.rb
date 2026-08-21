control 'PM-11a.[03]' do
  impact 0.5
  title "organizational mission and business processes are defined with consideration for the resulting risk to organizational operations, organizational assets, individuals, other organizations, and the Nation;"
  desc <<~DESC
    a. Define organizational mission and business processes with consideration for information security and privacy and the resulting risk to organizational operations, organizational assets, individuals, other organizations, and the Nation; and
    b. Determine information protection and personally identifiable information processing needs arising from the defined mission and business processes; and
    c. Review and revise the mission and business processes #{input('pm_11_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      organizational mission and business processes are defined with consideration for the resulting risk to organizational operations, organizational assets, individuals, other organizations, and the Nation;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; risk management strategy; procedures for determining mission and business protection needs; information security and privacy risk assessment results relevant to the determination of mission and business protection needs; personally identifiable information processing policy; personally identifiable information inventory; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for enterprise risk management; organizational personnel responsible for determining information protection needs for mission and business processes; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for defining mission and business processes and their information protection needs
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Protection needs are technology-independent capabilities that are required to counter threats to organizations, individuals, systems, and the Nation through the compromise of information (i.e., loss of confidentiality, integrity, availability, or privacy). Information protection and personally identifiable information processing needs are derived from the mission and business needs defined by organizational stakeholders, the mission and business processes designed to meet those needs, and the organizational risk management strategy. Information protection and personally identifiable information processing needs determine the required controls for the organization and the systems. Inherent to defining protection and personally identifiable information processing needs is an understanding of the adverse impact that could result if a compromise or breach of information occurs. The categorization process is used to make such potential impact determinations. Privacy risks to individuals can arise from the compromise of personally identifiable information, but they can also arise as unintended consequences or a byproduct of the processing of personally identifiable information at any stage of the information life cycle. Privacy risk assessments are used to prioritize the risks that are created for individuals from system processing of personally identifiable information. These risk assessments enable the selection of the required privacy controls for the organization and systems. Mission and business process definitions and the associated protection requirements are documented in accordance with organizational policies and procedures.
  GUIDANCE
  tag nist: ['PM-11']
  tag control: 'PM-11'
  tag objective: 'PM-11a.[03]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_11: true
  tag odp: %w{pm_11_odp}

  describe 'NIST SP 800-53A Rev 5 objective PM-11a.[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
