control 'CP-08(04)(c)[02]' do
  impact 0.5
  title "evidence of contingency training by providers is obtained #{input('cp_08_04_odp_02')}."
  desc <<~DESC
    (a) Require primary and alternate telecommunications service providers to have contingency plans;
    (b) Review provider contingency plans to ensure that the plans meet organizational contingency requirements; and
    (c) Obtain evidence of contingency testing and training by providers #{input('cp_8_4_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      evidence of contingency training by providers is obtained #{input('cp_08_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing primary and alternate telecommunications services; contingency plan; provider contingency plans; evidence of contingency testing/training by providers; primary and alternate telecommunications service agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning, plan implementation, and testing responsibilities; primary and alternate telecommunications service providers; organizational personnel with information security responsibilities; organizational personnel with responsibility for acquisitions/contractual agreements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Reviews of provider contingency plans consider the proprietary nature of such plans. In some situations, a summary of provider contingency plans may be sufficient evidence for organizations to satisfy the review requirement. Telecommunications service providers may also participate in ongoing disaster recovery exercises in coordination with the Department of Homeland Security and state and local governments. Organizations may use these types of activities to satisfy evidentiary requirements related to service provider contingency plan reviews, testing, and training.
  GUIDANCE
  tag nist: ['CP-8 (4)']
  tag control: 'CP-8 (4)'
  tag objective: 'CP-08(04)(c)[02]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_8_4: true
  tag odp: %w{cp_08_04_odp_02 cp_8_4_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CP-08(04)(c)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
