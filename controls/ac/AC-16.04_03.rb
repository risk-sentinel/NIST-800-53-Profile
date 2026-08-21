control 'AC-16(04)[03]' do
  impact 0.5
  title "authorized individuals (or processes acting on behalf of individuals) are provided with the capability to associate #{input('ac_16_04_odp_03')} with #{input('ac_16_04_odp_07')};"
  desc <<~DESC
    Provide the capability to associate #{input('ac_16_4_prm_1')} with #{input('ac_16_4_prm_2')} by authorized individuals (or processes acting on behalf of individuals).
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authorized individuals (or processes acting on behalf of individuals) are provided with the capability to associate #{input('ac_16_04_odp_03')} with #{input('ac_16_04_odp_07')};

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing the association of security and privacy attributes to information; system design documentation; system configuration settings and associated documentation; list of users authorized to associate security and privacy attributes to information; system prompts for privileged users to select security and privacy attributes to be associated with information objects; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for associating security and privacy attributes to information; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms supporting user associations of security and privacy attributes to information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Systems, in general, provide the capability for privileged users to assign security and privacy attributes to system-defined subjects (e.g., users) and objects (e.g., directories, files, and ports). Some systems provide additional capability for general users to assign security and privacy attributes to additional objects (e.g., files, emails). The association of attributes by authorized individuals is described in the design documentation. The support provided by systems can include prompting users to select security and privacy attributes to be associated with information objects, employing automated mechanisms to categorize information with attributes based on defined policies, or ensuring that the combination of the security or privacy attributes selected is valid. Organizations consider the creation, deletion, or modification of attributes when defining auditable events.
  GUIDANCE
  tag nist: ['AC-16 (4)']
  tag control: 'AC-16 (4)'
  tag objective: 'AC-16(04)[03]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_4: true
  tag odp: %w{ac_16_04_odp_03 ac_16_04_odp_07 ac_16_4_prm_1 ac_16_4_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AC-16(04)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
