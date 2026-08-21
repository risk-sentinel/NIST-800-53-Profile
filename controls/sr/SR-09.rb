control 'SR-09' do
  impact 0.5
  title "a tamper protection program is implemented for the system, system component, or system service."
  desc <<~DESC
    Implement a tamper protection program for the system, system component, or system service.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a tamper protection program is implemented for the system, system component, or system service.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; procedures addressing supply chain protection; procedures addressing tamper resistance and detection; tamper protection program documentation; tamper protection tools and techniques documentation; tamper resistance and detection tools and techniques documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with tamper protection program responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for the implementation of the tamper protection program; mechanisms supporting and/or implementing the tamper protection program
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Anti-tamper technologies, tools, and techniques provide a level of protection for systems, system components, and services against many threats, including reverse engineering, modification, and substitution. Strong identification combined with tamper resistance and/or tamper detection is essential to protecting systems and components during distribution and when in use.
  GUIDANCE
  tag nist: ['SR-9']
  tag control: 'SR-9'
  tag objective: 'SR-09'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_sr_9: true

  describe 'NIST SP 800-53A Rev 5 objective SR-09' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
