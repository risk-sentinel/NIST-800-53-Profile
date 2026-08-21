control 'AC-4 (23)' do
  impact 0.5
  title 'Modify Non-releasable Information'
  desc <<~DESC
    When transferring information between different security domains, modify non-releasable information by implementing #{input('ac_04_23_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(23) when transferring information between security domains, non-releasable information is modified by implementing #{input('ac_04_23_odp')}.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Modifying non-releasable information can help prevent a data spill or attack when information is transferred across security domains. Modification actions include masking, permutation, alteration, removal, or redaction.
  GUIDANCE
  tag nist: ['AC-4 (23)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_23_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (23)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
