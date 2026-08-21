control 'AC-16(01)[03]' do
  impact 0.5
  title "privacy attributes are dynamically associated with #{input('ac_16_01_odp_03')} in accordance with the following privacy policies as information is created and combined: #{input('ac_16_01_odp_06')};"
  desc <<~DESC
    Dynamically associate security and privacy attributes with #{input('ac_16_1_prm_1')} in accordance with the following security and privacy policies as information is created and combined: #{input('ac_16_1_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      privacy attributes are dynamically associated with #{input('ac_16_01_odp_03')} in accordance with the following privacy policies as information is created and combined: #{input('ac_16_01_odp_06')};

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing dynamic association of security and privacy attributes to information; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Automated mechanisms implementing dynamic association of security and privacy attributes to information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Dynamic association of attributes is appropriate whenever the security or privacy characteristics of information change over time. Attributes may change due to information aggregation issues (i.e., characteristics of individual data elements are different from the combined elements), changes in individual access authorizations (i.e., privileges), changes in the security category of information, or changes in security or privacy policies. Attributes may also change situationally.
  GUIDANCE
  tag nist: ['AC-16 (1)']
  tag control: 'AC-16 (1)'
  tag objective: 'AC-16(01)[03]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_1: true
  tag odp: %w{ac_16_01_odp_03 ac_16_01_odp_06 ac_16_1_prm_1 ac_16_1_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AC-16(01)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
