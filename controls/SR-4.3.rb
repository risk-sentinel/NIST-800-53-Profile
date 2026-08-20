control 'SR-4 (3)' do
  impact 0.5
  title 'Validate as Genuine and Not Altered'
  desc <<~DESC
    Employ the following controls to validate that the system or system component received is genuine and has not been altered: #{input('sr_4_3_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SR-04(03)[01] #{input('sr_04_03_odp_01')} are employed to validate that the system or system component received is genuine;
      SR-04(03)[02] #{input('sr_04_03_odp_02')} are employed to validate that the system or system component received has not been altered.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; procedures addressing supply chain protection; procedures addressing the security design principle of trusted components used in the specification, design, development, implementation, and modification of the system; system design documentation; procedures addressing the integration of information security requirements into the acquisition process; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; evidentiary documentation (including applicable configurations) indicating that the system or system component is genuine and has not been altered; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining and employing validation safeguards; mechanisms supporting and/or implementing the definition and employment of validation safeguards; mechanisms supporting the application of the security design principle of trusted components in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For many systems and system components, especially hardware, there are technical means to determine if the items are genuine or have been altered, including optical and nanotechnology tagging, physically unclonable functions, side-channel analysis, cryptographic hash verifications or digital signatures, and visible anti-tamper labels or stickers. Controls can also include monitoring for out of specification performance, which can be an indicator of tampering or counterfeits. Organizations may leverage supplier and contractor processes for validating that a system or component is genuine and has not been altered and for replacing a suspect system or component. Some indications of tampering may be visible and addressable before accepting delivery, such as inconsistent packaging, broken seals, and incorrect labels. When a system or system component is suspected of being altered or counterfeit, the supplier, contractor, or original equipment manufacturer may be able to replace the item or provide a forensic capability to determine the origin of the counterfeit or altered item. Organizations can provide training to personnel on how to identify suspicious system or component deliveries.
  GUIDANCE
  tag nist: ['SR-4 (3)']
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag odp: %w{sr_04_03_odp_01 sr_04_03_odp_02 sr_4_3_prm_1}

  describe 'NIST SP 800-53 Rev 5 control SR-4 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
