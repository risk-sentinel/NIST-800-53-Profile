control 'MA-6 (1)' do
  impact 0.5
  title 'Preventive Maintenance'
  desc <<~DESC
    Perform preventive maintenance on #{input('ma_06_01_odp_01')} at #{input('ma_06_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-06(01) preventive maintenance is performed on #{input('ma_06_01_odp_01')} at #{input('ma_06_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance; service provider contracts; service-level agreements; maintenance records; list of system components requiring preventive maintenance; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for preventive maintenance; mechanisms supporting and/or implementing preventive maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Preventive maintenance includes proactive care and the servicing of system components to maintain organizational equipment and facilities in satisfactory operating condition. Such maintenance provides for the systematic inspection, tests, measurements, adjustments, parts replacement, detection, and correction of incipient failures either before they occur or before they develop into major defects. The primary goal of preventive maintenance is to avoid or mitigate the consequences of equipment failures. Preventive maintenance is designed to preserve and restore equipment reliability by replacing worn components before they fail. Methods of determining what preventive (or other) failure management policies to apply include original equipment manufacturer recommendations; statistical failure records; expert opinion; maintenance that has already been conducted on similar equipment; requirements of codes, laws, or regulations within a jurisdiction; or measured values and performance indications.
  GUIDANCE
  tag nist: ['MA-6 (1)']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag odp: %w{ma_06_01_odp_01 ma_06_01_odp_02}

  describe 'NIST SP 800-53 Rev 5 control MA-6 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
