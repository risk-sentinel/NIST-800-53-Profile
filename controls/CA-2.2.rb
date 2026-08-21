control 'CA-2 (2)' do
  impact 0.5
  title 'Specialized Assessments'
  desc <<~DESC
    Include as part of control assessments, #{input('ca_02_02_odp_01')}, #{input('ca_02_02_odp_02')}, #{input('ca_02_02_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CA-02(02) #{input('ca_02_02_odp_01')} #{input('ca_02_02_odp_02')} #{input('ca_02_02_odp_03')} are included as part of control assessments.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing control assessments; control assessment plan; control assessment report; control assessment evidence; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with control assessment responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting control assessment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can conduct specialized assessments, including verification and validation, system monitoring, insider threat assessments, malicious user testing, and other forms of testing. These assessments can improve readiness by exercising organizational capabilities and indicating current levels of performance as a means of focusing actions to improve security and privacy. Organizations conduct specialized assessments in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Authorizing officials approve the assessment methods in coordination with the organizational risk executive function. Organizations can include vulnerabilities uncovered during assessments into vulnerability remediation processes. Specialized assessments can also be conducted early in the system development life cycle (e.g., during initial design, development, and unit testing).
  GUIDANCE
  tag nist: ['CA-2 (2)']
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ca_02_02_odp_01 ca_02_02_odp_02 ca_02_02_odp_03}

  describe 'NIST SP 800-53 Rev 5 control CA-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
