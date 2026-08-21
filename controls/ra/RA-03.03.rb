control 'RA-03(03)' do
  impact 0.5
  title "the current cyber threat environment is determined on an ongoing basis using #{input('ra_03_03_odp')}."
  desc <<~DESC
    Determine the current cyber threat environment on an ongoing basis using #{input('ra_03_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the current cyber threat environment is determined on an ongoing basis using #{input('ra_03_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; security planning policy and procedures; procedures addressing organizational assessments of risk; risk assessment; risk assessment results; risk assessment reviews; risk assessment updates; risk reports; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with risk assessment responsibilities; organizational personnel with security responsibilities
      TEST: Organizational processes for risk assessment; mechanisms supporting and/or conducting, documenting, reviewing, disseminating, and updating the risk assessment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The threat awareness information that is gathered feeds into the organization’s information security operations to ensure that procedures are updated in response to the changing threat environment. For example, at higher threat levels, organizations may change the privilege or authentication thresholds required to perform certain operations.
  GUIDANCE
  tag nist: ['RA-3 (3)']
  tag control: 'RA-3 (3)'
  tag objective: 'RA-03(03)'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag control_ra_3_3: true
  tag odp: %w{ra_03_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective RA-03(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
