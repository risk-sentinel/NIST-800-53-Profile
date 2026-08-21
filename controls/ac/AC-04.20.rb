control 'AC-04(20)' do
  impact 0.5
  title "#{input('ac_04_20_odp_01')} are employed to control the flow of #{input('ac_04_20_odp_02')} across security domains."
  desc <<~DESC
    Employ #{input('ac_04_20_odp_01')} to control the flow of #{input('ac_04_20_odp_02')} across security domains.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_04_20_odp_01')} are employed to control the flow of #{input('ac_04_20_odp_02')} across security domains.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of solutions in approved configurations; approved configuration baselines; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations define approved solutions and configurations in cross-domain policies and guidance in accordance with the types of information flows across classification boundaries. The National Security Agency (NSA) National Cross Domain Strategy and Management Office provides a listing of approved cross-domain solutions. Contact [ncdsmo@nsa.gov](mailto:ncdsmo@nsa.gov) for more information.
  GUIDANCE
  tag nist: ['AC-4 (20)']
  tag control: 'AC-4 (20)'
  tag objective: 'AC-04(20)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_20: true
  tag odp: %w{ac_04_20_odp_01 ac_04_20_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(20)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
