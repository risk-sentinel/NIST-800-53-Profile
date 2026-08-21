control 'CP-04(02)(b)' do
  impact 0.5
  title "the contingency plan is tested at the alternate processing site to evaluate the capabilities of the alternate processing site to support contingency operations."
  desc <<~DESC
    Test the contingency plan at the alternate processing site:
      (a) To familiarize contingency personnel with the facility and available resources; and
      (b) To evaluate the capabilities of the alternate processing site to support contingency operations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the contingency plan is tested at the alternate processing site to evaluate the capabilities of the alternate processing site to support contingency operations.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency plan testing; contingency plan; contingency plan test documentation; contingency plan test results; alternate processing site agreements; service-level agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency plan testing; mechanisms supporting the contingency plan and/or contingency plan testing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Conditions at the alternate processing site may be significantly different than the conditions at the primary site. Having the opportunity to visit the alternate site and experience the actual capabilities available at the site can provide valuable information on potential vulnerabilities that could affect essential organizational mission and business functions. The on-site visit can also provide an opportunity to refine the contingency plan to address the vulnerabilities discovered during testing.
  GUIDANCE
  tag nist: ['CP-4 (2)']
  tag control: 'CP-4 (2)'
  tag objective: 'CP-04(02)(b)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_4_2: true

  describe 'NIST SP 800-53A Rev 5 objective CP-04(02)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
