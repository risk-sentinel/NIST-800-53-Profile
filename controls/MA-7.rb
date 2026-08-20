control 'MA-7' do
  impact 0.5
  title 'Field Maintenance'
  desc <<~DESC
    Restrict or prohibit field maintenance on #{input('ma_07_odp_01')} to #{input('ma_07_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-07 field maintenance on #{input('ma_07_odp_01')} are restricted or prohibited to #{input('ma_07_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing field maintenance; system design documentation; system configuration settings and associated documentation; maintenance records; diagnostic records; system security plan; other relevant documents or records.
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing field maintenance; mechanisms implementing, supporting, and/or managing field maintenance; mechanisms for strong authentication of field maintenance diagnostic sessions; mechanisms for terminating field maintenance sessions and network connections
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Field maintenance is the type of maintenance conducted on a system or system component after the system or component has been deployed to a specific site (i.e., operational environment). In certain instances, field maintenance (i.e., local maintenance at the site) may not be executed with the same degree of rigor or with the same quality control checks as depot maintenance. For critical systems designated as such by the organization, it may be necessary to restrict or prohibit field maintenance at the local site and require that such maintenance be conducted in trusted facilities with additional controls.
  GUIDANCE
  tag nist: ['MA-7']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag odp: %w{ma_07_odp_01 ma_07_odp_02}

  describe 'NIST SP 800-53 Rev 5 control MA-7' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
