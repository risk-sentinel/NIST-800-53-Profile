control 'CA-08(03)' do
  impact 0.5
  title "the penetration testing process includes #{input('ca_08_03_odp_01')} #{input('ca_08_03_odp_02')} attempts to bypass or circumvent controls associated with physical access points to facility."
  desc <<~DESC
    Employ a penetration testing process that includes #{input('ca_08_03_odp_01')} #{input('ca_08_03_odp_02')} attempts to bypass or circumvent controls associated with physical access points to the facility.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the penetration testing process includes #{input('ca_08_03_odp_01')} #{input('ca_08_03_odp_02')} attempts to bypass or circumvent controls associated with physical access points to facility.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing penetration testing; procedures addressing red team exercises; assessment plan; results of red team exercises; penetration test report; assessment report; rules of engagement; assessment evidence; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with assessment responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Automated mechanisms supporting the employment of red team exercises
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Penetration testing of physical access points can provide information on critical vulnerabilities in the operating environments of organizational systems. Such information can be used to correct weaknesses or deficiencies in physical controls that are necessary to protect organizational systems.
  GUIDANCE
  tag nist: ['CA-8 (3)']
  tag control: 'CA-8 (3)'
  tag objective: 'CA-08(03)'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_8_3: true
  tag odp: %w{ca_08_03_odp_01 ca_08_03_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective CA-08(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
