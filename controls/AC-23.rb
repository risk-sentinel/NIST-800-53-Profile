control 'AC-23' do
  impact 0.5
  title 'Data Mining Protection'
  desc <<~DESC
    Employ #{input('ac_23_odp_01')} for #{input('ac_23_odp_02')} to detect and protect against unauthorized data mining.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-23 #{input('ac_23_odp_01')} are employed for #{input('ac_23_odp_02')} to detect and protect against unauthorized data mining.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures for preventing and detecting data mining; policies and procedures addressing authorized data mining techniques; procedures addressing protection of data storage objects against data mining; system design documentation; system configuration settings and associated documentation; system audit logs; system audit records; procedures addressing differential privacy techniques; notifications of atypical database queries or accesses; documentation or reports of insider threat program; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for implementing data mining detection and prevention techniques for data storage objects; legal counsel; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing data mining prevention and detection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data mining is an analytical process that attempts to find correlations or patterns in large data sets for the purpose of data or knowledge discovery. Data storage objects include database records and database fields. Sensitive information can be extracted from data mining operations. When information is personally identifiable information, it may lead to unanticipated revelations about individuals and give rise to privacy risks. Prior to performing data mining activities, organizations determine whether such activities are authorized. Organizations may be subject to applicable laws, executive orders, directives, regulations, or policies that address data mining requirements. Organizational personnel consult with the senior agency official for privacy and legal counsel regarding such requirements.

    Data mining prevention and detection techniques include limiting the number and frequency of database queries to increase the work factor needed to determine the contents of databases, limiting types of responses provided to database queries, applying differential privacy techniques or homomorphic encryption, and notifying personnel when atypical database queries or accesses occur. Data mining protection focuses on protecting information from data mining while such information resides in organizational data stores. In contrast, [AU-13](#au-13) focuses on monitoring for organizational information that may have been mined or otherwise obtained from data stores and is available as open-source information residing on external sites, such as social networking or social media websites.

    [EO 13587](#0af071a6-cf8e-48ee-8c82-fe91efa20f94) requires the establishment of an insider threat program for deterring, detecting, and mitigating insider threats, including the safeguarding of sensitive information from exploitation, compromise, or other unauthorized disclosure. Data mining protection requires organizations to identify appropriate techniques to prevent and detect unnecessary or unauthorized data mining. Data mining can be used by an insider to collect organizational information for the purpose of exfiltration.
  GUIDANCE
  tag nist: ['AC-23']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_23_odp_01 ac_23_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-23' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
