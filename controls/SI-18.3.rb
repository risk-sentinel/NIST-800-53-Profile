control 'SI-18 (3)' do
  impact 0.5
  title 'Collection'
  desc <<~DESC
    Collect personally identifiable information directly from the individual.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-18(03) personally identifiable information is collected directly from the individual.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; system configuration documentation; system audit records; user interface where personally identifiable information is collected; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for data collection; organizational personnel with information security and privacy responsibilities
      TEST: Data collection mechanisms; automated mechanisms supporting and/or validating collection directly from the individual
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Individuals or their designated representatives can be sources of correct personally identifiable information. Organizations consider contextual factors that may incentivize individuals to provide correct data versus false data. Additional steps may be necessary to validate collected information based on the nature and context of the personally identifiable information, how it is to be used, and how it was obtained. The measures taken to validate the accuracy of personally identifiable information used to make determinations about the rights, benefits, or privileges of individuals under federal programs may be more comprehensive than the measures taken to validate less sensitive personally identifiable information.
  GUIDANCE
  tag nist: ['SI-18 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-18 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
