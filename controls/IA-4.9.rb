control 'IA-4 (9)' do
  impact 0.5
  title 'Attribute Maintenance and Protection'
  desc <<~DESC
    Maintain the attributes for each uniquely identified individual, device, or service in #{input('ia_04_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-04(09) the attributes for each uniquely identified individual, device, or service are maintained in #{input('ia_04_09_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing identifier management; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with identifier management responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing identifier management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For each of the entities covered in [IA-2](#ia-2), [IA-3](#ia-3), [IA-8](#ia-8) , and [IA-9](#ia-9) , it is important to maintain the attributes for each authenticated entity on an ongoing basis in a central (protected) store.
  GUIDANCE
  tag nist: ['IA-4 (9)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_04_09_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-4 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
