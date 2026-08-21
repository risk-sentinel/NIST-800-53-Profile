control 'PM-30 (1)' do
  impact 0.5
  title 'Suppliers of Critical or Mission-essential Items'
  desc <<~DESC
    Identify, prioritize, and assess suppliers of critical or mission-essential technologies, products, and services.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-30(01)[01] suppliers of critical or mission-essential technologies, products, and services are identified;
      PM-30(01)[02] suppliers of critical or mission-essential technologies, products, and services are prioritized;
      PM-30(01)[03] suppliers of critical or mission-essential technologies, products, and services are assessed.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management strategy; organization-wide risk management strategy; enterprise risk management documents; inventory records or suppliers; assessment and prioritization documentation; critical or mission-essential technologies, products, and service documents or records; other relevant documents or records
      INTERVIEW: Organizational personnel with supply chain risk management responsibilities; organizational personnel with information security responsibilities; organizational personnel with acquisition responsibilities; organizational personnel with enterprise risk management responsibilities
      TEST: Organizational processes for identifying, prioritizing, and assessing critical or mission-essential technologies, products, and services; organizational processes for maintaining an inventory of suppliers; organizational process for associating suppliers with critical or mission-essential technologies, products, and services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The identification and prioritization of suppliers of critical or mission-essential technologies, products, and services is paramount to the mission/business success of organizations. The assessment of suppliers is conducted using supplier reviews (see [SR-6](#sr-6) ) and supply chain risk assessment processes (see [RA-3(1)](#ra-3.1) ). An analysis of supply chain risk can help an organization identify systems or components for which additional supply chain risk mitigations are required.
  GUIDANCE
  tag nist: ['PM-30 (1)']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PM-30 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
