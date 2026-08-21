control 'MA-03(03)(b)' do
  impact 0.5
  title "the removal of maintenance equipment containing organizational information is prevented by sanitizing or destroying the equipment; or"
  desc <<~DESC
    Prevent the removal of maintenance equipment containing organizational information by:
      (a) Verifying that there is no organizational information contained on the equipment;
      (b) Sanitizing or destroying the equipment;
      (c) Retaining the equipment within the facility; or
      (d) Obtaining an exemption from #{input('ma_03_03_odp')} explicitly authorizing removal of the equipment from the facility.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the removal of maintenance equipment containing organizational information is prevented by sanitizing or destroying the equipment; or

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance tools; system maintenance tools and associated documentation; maintenance records; equipment sanitization records; media sanitization records; exemptions for equipment removal; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; organizational personnel responsible for media sanitization
      TEST: Organizational process for preventing unauthorized removal of information; mechanisms supporting media sanitization or destruction of equipment; mechanisms supporting verification of media sanitization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizational information includes all information owned by organizations and any information provided to organizations for which the organizations serve as information stewards.
  GUIDANCE
  tag nist: ['MA-3 (3)']
  tag control: 'MA-3 (3)'
  tag objective: 'MA-03(03)(b)'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ma_3_3: true
  tag odp: %w{ma_03_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective MA-03(03)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
