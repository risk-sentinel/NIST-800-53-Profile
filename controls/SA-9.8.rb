control 'SA-9 (8)' do
  impact 0.5
  title 'Processing and Storage Location — U.S. Jurisdiction'
  desc <<~DESC
    Restrict the geographic location of information processing and data storage to facilities located within in the legal jurisdictional boundary of the United States.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-09(08) the geographic location of information processing and data storage is restricted to facilities located within the legal jurisdictional boundary of the United States.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing external system services; acquisition contracts for the system, system component, or system service; solicitation documentation; acquisition documentation; service level agreements; procedures addressing determining jurisdiction restrictions for processing and storage location; information/data and/or system services; organizational security requirements or conditions for external providers; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organization personnel with supply chain risk management responsibilities; external providers of system services
      TEST: Organizational processes restricting external system service providers to process and store information within the legal jurisdictional boundary of the United States
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The geographic location of information processing and data storage can have a direct impact on the ability of organizations to successfully execute their mission and business functions. A compromise or breach of high impact information and systems can have severe or catastrophic adverse impacts on organizational assets and operations, individuals, other organizations, and the Nation. Restricting the processing and storage of high-impact information to facilities within the legal jurisdictional boundary of the United States provides greater control over such processing and storage.
  GUIDANCE
  tag nist: ['SA-9 (8)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-9 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
