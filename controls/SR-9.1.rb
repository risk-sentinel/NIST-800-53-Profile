control 'SR-9 (1)' do
  impact 0.5
  title 'Multiple Stages of System Development Life Cycle'
  desc <<~DESC
    Employ anti-tamper technologies, tools, and techniques throughout the system development life cycle.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SR-09(01) anti-tamper technologies, tools, and techniques are employed throughout the system development life cycle.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; procedures addressing tamper resistance and detection; tamper protection program documentation; tamper protection tools and techniques documentation; tamper resistance and detection tools (technologies) and techniques documentation; system development life cycle documentation; procedures addressing supply chain protection; system development life cycle procedures; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; inter-organizational agreements and procedures; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities; organizational personnel with SDLC responsibilities
      TEST: Organizational processes for employing anti-tamper technologies; mechanisms supporting and/or implementing anti-tamper technologies
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The system development life cycle includes research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal. Organizations use a combination of hardware and software techniques for tamper resistance and detection. Organizations use obfuscation and self-checking to make reverse engineering and modifications more difficult, time-consuming, and expensive for adversaries. The customization of systems and system components can make substitutions easier to detect and therefore limit damage.
  GUIDANCE
  tag nist: ['SR-9 (1)']
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control SR-9 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
