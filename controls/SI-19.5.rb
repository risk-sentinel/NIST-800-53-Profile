control 'SI-19 (5)' do
  impact 0.5
  title 'Statistical Disclosure Control'
  desc <<~DESC
    Manipulate numerical data, contingency tables, and statistical findings so that no individual or organization is identifiable in the results of the analysis.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-19(05)[01] numerical data is manipulated so that no individual or organization is identifiable in the results of the analysis;
      SI-19(05)[02] contingency tables are manipulated so that no individual or organization is identifiable in the results of the analysis;
      SI-19(05)[03] statistical findings are manipulated so that no individual or organization is identifiable in the results of the analysis.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; system configuration; de-identified datasets; statistical analysis report; tools for the control of statistical disclosure; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for de-identifying the dataset; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms supporting and/or implementing the control of statistical disclosure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Many types of statistical analyses can result in the disclosure of information about individuals even if only summary information is provided. For example, if a school that publishes a monthly table with the number of minority students enrolled, reports that it has 10-19 such students in January, and subsequently reports that it has 20-29 such students in March, then it can be inferred that the student who enrolled in February was a minority.
  GUIDANCE
  tag nist: ['SI-19 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-19 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
