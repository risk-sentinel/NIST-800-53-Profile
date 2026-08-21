control 'AC-04(15)[03]' do
  impact 0.5
  title "when transferring information between different security domains, transfer of #{input('ac_04_15_odp_01')} is prohibited in accordance with the #{input('ac_04_15_odp_03')}."
  desc <<~DESC
    When transferring information between different security domains, examine the information for the presence of #{input('ac_04_15_odp_01')} and prohibit the transfer of such information in accordance with the #{input('ac_4_15_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      when transferring information between different security domains, transfer of #{input('ac_04_15_odp_01')} is prohibited in accordance with the #{input('ac_04_15_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of unsanctioned information types and associated information; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security responsibilities; organizational personnel with privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Unsanctioned information includes malicious code, information that is inappropriate for release from the source network, or executable code that could disrupt or harm the services or systems on the destination network.
  GUIDANCE
  tag nist: ['AC-4 (15)']
  tag control: 'AC-4 (15)'
  tag objective: 'AC-04(15)[03]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_15: true
  tag odp: %w{ac_04_15_odp_01 ac_04_15_odp_03 ac_4_15_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(15)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
