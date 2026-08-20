control 'AU-6 (9)' do
  impact 0.5
  title 'Correlation with Information from Nontechnical Sources'
  desc <<~DESC
    Correlate information from nontechnical sources with audit record information to enhance organization-wide situational awareness.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-06(09) information from non-technical sources is correlated with audit record information to enhance organization-wide situational awareness.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit review, analysis, and reporting; system design documentation; system configuration settings and associated documentation; documentation providing evidence of correlated information obtained from audit records and organization-defined non-technical sources; list of information types from non-technical sources for correlation with audit information; other relevant documents or records
      INTERVIEW: Organizational personnel with audit review, analysis, and reporting responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing capability to correlate information from non-technical sources
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Nontechnical sources include records that document organizational policy violations related to harassment incidents and the improper use of information assets. Such information can lead to a directed analytical effort to detect potential malicious insider activity. Organizations limit access to information that is available from nontechnical sources due to its sensitive nature. Limited access minimizes the potential for inadvertent release of privacy-related information to individuals who do not have a need to know. The correlation of information from nontechnical sources with audit record information generally occurs only when individuals are suspected of being involved in an incident. Organizations obtain legal advice prior to initiating such actions.
  GUIDANCE
  tag nist: ['AU-6 (9)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AU-6 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
