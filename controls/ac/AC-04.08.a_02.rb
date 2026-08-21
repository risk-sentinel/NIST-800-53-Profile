control 'AC-04(08)(a)[02]' do
  impact 0.5
  title "information flow control is enforced using #{input('ac_04_08_odp_02')} as a basis for flow control decisions for #{input('ac_04_08_odp_04')};"
  desc <<~DESC
    (a) Enforce information flow control using #{input('ac_4_8_prm_1')} as a basis for flow control decisions for #{input('ac_4_8_prm_2')} ; and
    (b) #{input('ac_04_08_odp_05')} data after a filter processing failure in accordance with #{input('ac_4_8_prm_4')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information flow control is enforced using #{input('ac_04_08_odp_02')} as a basis for flow control decisions for #{input('ac_04_08_odp_04')};

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of security policy filters regulating flow control decisions; list of privacy policy filters regulating flow control decisions; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy; security and privacy policy filters
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organization-defined security or privacy policy filters can address data structures and content. For example, security or privacy policy filters for data structures can check for maximum file lengths, maximum field sizes, and data/file types (for structured and unstructured data). Security or privacy policy filters for data content can check for specific words, enumerated values or data value ranges, and hidden content. Structured data permits the interpretation of data content by applications. Unstructured data refers to digital information without a data structure or with a data structure that does not facilitate the development of rule sets to address the impact or classification level of the information conveyed by the data or the flow enforcement decisions. Unstructured data consists of bitmap objects that are inherently non-language-based (i.e., image, video, or audio files) and textual objects that are based on written or printed languages. Organizations can implement more than one security or privacy policy filter to meet information flow control objectives.
  GUIDANCE
  tag nist: ['AC-4 (8)']
  tag control: 'AC-4 (8)'
  tag objective: 'AC-04(08)(a)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_8: true
  tag odp: %w{ac_04_08_odp_02 ac_04_08_odp_04 ac_04_08_odp_05 ac_4_8_prm_1 ac_4_8_prm_2 ac_4_8_prm_4}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(08)(a)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
