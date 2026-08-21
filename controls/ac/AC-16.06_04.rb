control 'AC-16(06)[04]' do
  impact 0.5
  title "personnel are required to associate and maintain the association of #{input('ac_16_06_odp_04')} with #{input('ac_16_06_odp_08')} in accordance with #{input('ac_16_06_odp_10')}."
  desc <<~DESC
    Require personnel to associate and maintain the association of #{input('ac_16_6_prm_1')} with #{input('ac_16_6_prm_2')} in accordance with #{input('ac_16_6_prm_3')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personnel are required to associate and maintain the association of #{input('ac_16_06_odp_04')} with #{input('ac_16_06_odp_08')} in accordance with #{input('ac_16_06_odp_10')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing association of security and privacy attributes with subjects and objects; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for associating and maintaining association of security and privacy attributes with subjects and objects; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms supporting associations of security and privacy attributes to subjects and objects
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Maintaining attribute association requires individual users (as opposed to the system) to maintain associations of defined security and privacy attributes with subjects and objects.
  GUIDANCE
  tag nist: ['AC-16 (6)']
  tag control: 'AC-16 (6)'
  tag objective: 'AC-16(06)[04]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_6: true
  tag odp: %w{ac_16_06_odp_04 ac_16_06_odp_08 ac_16_06_odp_10 ac_16_6_prm_1 ac_16_6_prm_2 ac_16_6_prm_3}

  describe 'NIST SP 800-53A Rev 5 objective AC-16(06)[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
