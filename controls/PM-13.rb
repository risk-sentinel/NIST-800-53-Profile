control 'PM-13' do
  impact 0.5
  title 'Security and Privacy Workforce'
  desc <<~DESC
    Establish a security and privacy workforce development and improvement program.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-13[01] a security workforce development and improvement program is established;
      PM-13[02] a privacy workforce development and improvement program is established.

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; information security and privacy workforce development and improvement program documentation; procedures for the information security and privacy workforce development and improvement program; information security and privacy role-based training program documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for the information security and privacy workforce development and improvement program; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for implementing the information security and privacy workforce development and improvement program; mechanisms supporting and/or implementing the information security and privacy workforce development and improvement program
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security and privacy workforce development and improvement programs include defining the knowledge, skills, and abilities needed to perform security and privacy duties and tasks; developing role-based training programs for individuals assigned security and privacy roles and responsibilities; and providing standards and guidelines for measuring and building individual qualifications for incumbents and applicants for security- and privacy-related positions. Such workforce development and improvement programs can also include security and privacy career paths to encourage security and privacy professionals to advance in the field and fill positions with greater responsibility. The programs encourage organizations to fill security- and privacy-related positions with qualified personnel. Security and privacy workforce development and improvement programs are complementary to organizational security awareness and training programs and focus on developing and institutionalizing the core security and privacy capabilities of personnel needed to protect organizational operations, assets, and individuals.
  GUIDANCE
  tag nist: ['PM-13']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control PM-13' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
