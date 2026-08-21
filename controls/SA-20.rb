control 'SA-20' do
  impact 0.5
  title 'Customized Development of Critical Components'
  desc <<~DESC
    Reimplement or custom develop the following critical system components: #{input('sa_20_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-20 #{input('sa_20_odp')} are reimplemented or custom-developed.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management plan; system and services acquisition policy; procedures addressing the customized development of critical system components; system design documentation; system configuration settings and associated documentation; system development life cycle documentation addressing the custom development of critical system components; configuration management records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with responsibility for the reimplementation or customized development of critical system components
      TEST: Organizational processes for the reimplementation or customized development of critical system components; mechanisms supporting and/or implementing the reimplementation or customized development of critical system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations determine that certain system components likely cannot be trusted due to specific threats to and vulnerabilities in those components for which there are no viable security controls to adequately mitigate risk. Reimplementation or custom development of such components may satisfy requirements for higher assurance and is carried out by initiating changes to system components (including hardware, software, and firmware) such that the standard attacks by adversaries are less likely to succeed. In situations where no alternative sourcing is available and organizations choose not to reimplement or custom develop critical system components, additional controls can be employed. Controls include enhanced auditing, restrictions on source code and system utility access, and protection from deletion of system and application files.
  GUIDANCE
  tag nist: ['SA-20']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_20_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-20' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
