control 'SC-29(01)' do
  impact 0.5
  title "virtualization techniques are employed to support the deployment of a diverse range of operating systems and applications that are changed #{input('sc_29_01_odp')}."
  desc <<~DESC
    Employ virtualization techniques to support the deployment of a diversity of operating systems and applications that are changed #{input('sc_29_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      virtualization techniques are employed to support the deployment of a diverse range of operating systems and applications that are changed #{input('sc_29_01_odp')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; configuration management policy and procedures; system design documentation; system configuration settings and associated documentation; system architecture; list of operating systems and applications deployed using virtualization techniques; change control records; configuration management records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for implementing approved virtualization techniques to the system
      TEST: Mechanisms supporting and/or implementing the employment of a diverse set of information technologies; mechanisms supporting and/or implementing virtualization techniques
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    While frequent changes to operating systems and applications can pose significant configuration management challenges, the changes can result in an increased work factor for adversaries to conduct successful attacks. Changing virtual operating systems or applications, as opposed to changing actual operating systems or applications, provides virtual changes that impede attacker success while reducing configuration management efforts. Virtualization techniques can assist in isolating untrustworthy software or software of dubious provenance into confined execution environments.
  GUIDANCE
  tag nist: ['SC-29 (1)']
  tag control: 'SC-29 (1)'
  tag objective: 'SC-29(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_29_1: true
  tag odp: %w{sc_29_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-29(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
