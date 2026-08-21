control 'AC-04(02)' do
  impact 0.5
  title "protected processing domains are used to enforce #{input('ac_04_02_odp')} as a basis for flow control decisions."
  desc <<~DESC
    Use protected processing domains to enforce #{input('ac_04_02_odp')} as a basis for flow control decisions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      protected processing domains are used to enforce #{input('ac_04_02_odp')} as a basis for flow control decisions.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system security architecture and associated documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Protected processing domains within systems are processing spaces that have controlled interactions with other processing spaces, enabling control of information flows between these spaces and to/from information objects. A protected processing domain can be provided, for example, by implementing domain and type enforcement. In domain and type enforcement, system processes are assigned to domains, information is identified by types, and information flows are controlled based on allowed information accesses (i.e., determined by domain and type), allowed signaling among domains, and allowed process transitions to other domains.
  GUIDANCE
  tag nist: ['AC-4 (2)']
  tag control: 'AC-4 (2)'
  tag objective: 'AC-04(02)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_2: true
  tag odp: %w{ac_04_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
