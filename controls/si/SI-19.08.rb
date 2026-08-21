control 'SI-19(08)' do
  impact 0.5
  title "a motivated intruder test is performed on the de-identified dataset to determine if the identified data remains or if the de-identified data can be re-identified."
  desc <<~DESC
    Perform a motivated intruder test on the de-identified dataset to determine if the identified data remains or if the de-identified data can be re-identified.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a motivated intruder test is performed on the de-identified dataset to determine if the identified data remains or if the de-identified data can be re-identified.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; system configuration; motivated intruder test procedures; de-identified datasets; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for de-identifying the dataset; organizational personnel with information security and privacy responsibilities
      TEST: Motivated intruder test
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A motivated intruder test is a test in which an individual or group takes a data release and specified resources and attempts to re-identify one or more individuals in the de-identified dataset. Such tests specify the amount of inside knowledge, computational resources, financial resources, data, and skills that intruders possess to conduct the tests. A motivated intruder test can determine if the de-identification is insufficient. It can also be a useful diagnostic tool to assess if de-identification is likely to be sufficient. However, the test alone cannot prove that de-identification is sufficient.
  GUIDANCE
  tag nist: ['SI-19 (8)']
  tag control: 'SI-19 (8)'
  tag objective: 'SI-19(08)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_19_8: true

  describe 'NIST SP 800-53A Rev 5 objective SI-19(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
